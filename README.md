# mac_Clamshell_Mode_without_Power
Apple will not let you do that unless you have a power adapter connected to your MacBook. In order to use a MacBook in clamshell mode without keeping the charger always connected to it I have created this script that checks whether the device Clamshell Mode Status and gives you optoin to change it to default or without power.

#About the Script
For command line 
Donwload the script and provide executable permissions 
chmod 755 clamshell_mode_0.1.sh 
Run the script through terminal with sudo priviledges 
sudo ./clamshell_mode_0.1.sh

For direct Download clamshell_mode_0.1.command 
if doesnt work provide exec permissions by opening the path in terminal 
cd Downloads (in Default case as the file will be in downloads)
chmod 755 clamshell_mode_0.1.command
 
Purpose: This script helps you manage the power settings on your Mac computer. Specifically, it allows you to switch between two modes: Default Clamshell Mode and Clamshell Mode without Power.

How to Use:

When you run the script, it will show you the current mode and prompt you to choose an action.
You'll see a menu with options to enable one of the modes or exit the script.
Options:

Enable Clamshell Mode without Power: This option sets your Mac to a mode where it behaves as if the lid (clamshell) is closed even when it's open. It's useful if you want to keep your Mac awake without needing to keep the lid closed.
Revert to Default Clamshell Mode: This option switches your Mac back to its default behavior, where it goes to sleep when you close the lid.
Exit: This option allows you to exit the script if you don't want to change any settings.
After Choosing an Option:

After you choose an option, the script will apply the selected mode and show you a message confirming the action.
Then, it will wait for a few seconds before showing the menu again, so you can choose another action if needed.
Exiting the Script:

If you choose to exit the script, it will say goodbye and close after a few seconds.
Special Cases:

If your system doesn't support the expected power settings or if there's an error determining the current mode, the script will inform you and then exit.
Keyboard Shortcuts Ignored:

The script ignores certain keyboard shortcuts to ensure it continues running smoothly, even if you accidentally press them.
