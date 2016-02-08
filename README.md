# backlight
## Backlight changer
Put the name of your backlight brightness file in ~/.backlight. As an example, for my laptop, with the nvidiabl driver installed, I have to use the following:
/sys/class/backlight/nvidia_backlight/brightness

### Using backlight
Then run the script like:
./backlight.pl +10 to increase brightness
Or like:
./backlight.pl -10 to decrease brightness
