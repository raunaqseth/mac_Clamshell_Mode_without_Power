# mac_Clamshell_Mode_without_Power
Apple will not let you do that unless you have a power adapter connected to your MacBook. In order to use a MacBook in clamshell mode without keeping the charger always connected to it I have created this script that checks whether the device Clamshell Mode Status and gives you optoin to change it to default or without power.

#About the Script
Certainly! Let’s break down the script in a more user-friendly way:

Current Status Check:
The script checks the current hibernatemode setting (which affects how your Mac handles sleep and hibernation).
It then displays the current status based on whether it’s in Default Clamshell Mode or Clamshell Mode without Power.

Menu Options:
The script presents a menu with three options:
Option 1: Enable Clamshell Mode without Power
Option 2: Revert to Default Clamshell Mode
Option 3: Exit

User Interaction:
You choose an option by typing the corresponding number.
Based on your choice:

Option 1:
Disables sleep (so your Mac won’t sleep automatically).
Sets hibernatemode to allow Clamshell Mode without Power.

Option 2:
Sets a short sleep timer (1 minute).
Sets hibernatemode to Default Clamshell Mode.
Allows normal sleep behavior.

Option 3: Exits the script.
