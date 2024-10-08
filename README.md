### Asus Zenbook Duo 2024(Linux) Patch
Simple bash script to counter bug on Asus Zenbook Duo 2024 (UX8406) causing wifi to disable when removing or reconnecting the keyboard.
Checks at 5 second intervals if wifi is disabled and re-enables it if it is.

### Installation
Place wifi_fixer.sh in desired location and make executable with `chmod +x wifi_fixer.sh`.
Add script to system with by placing wifi-fixer.service in /etc/systemd/system/ and running `systemctl enable wifi-fixer.service`.
Update path to file in wifi-fixer.service.
