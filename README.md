# i3 wm laptop battery notifications
This is a shell script that popout a notification when your battery percentage is over 80% and the battery is charging and when your battery is below 40% en your battery is not chargin.
The idea is to implement the 40-80% rule for lithium batteries on laptop.
This script do not consider multiple batteries

### Dependencies
- [twmn](https://github.com/sboli/twmn)

### Recomendations
- Change the settings of the notifications using `~/.config/twmn/twmn.conf` after installing twmn
- Create a service to run the script on startup
