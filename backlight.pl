#!/usr/bin/perl -w

my $configfile = $ENV{"HOME"} . "/.backlight";

open(my $config, "<", $configfile)
    or die "Missing $configfile $!";

my $bldevice = <$config>;
chomp $bldevice;

open(my $device, "<", $bldevice)
    or die "Unable to open backlight device. $!";

my $lightlevel = <$device>;


print "Current light level: " . $lightlevel;

my ($change) = @ARGV;

if(not defined $change)
{
    die "Need a change value\n";
}

$lightlevel = $lightlevel + $change;

print "New light level: " . $lightlevel;

if($lightlevel > 100)
{
    $lightlevel = "100";
}

if($lightlevel < 0)
{
    $lightlevel = "0";
}
open($device, ">", $bldevice)
    or die "Unable to write to backlight device. $!";

print $device $lightlevel;
