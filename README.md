Huawei3C
========

Huawei Honor 3C H30-U10

This guide shows how to make this phone more usefull (root, custom rom).
This guide also helps repair some issues with phone.

!!! WARNING !!!
We are not responsible for any damage

1. Download
===========
Download necessary files from git.

- download zip of all this repository or:
```
  git clone https://github.com/Tepira/Huawei3C
```
- download rom H3Crom.zip and Gapps.zip from here <a href="http://download.tepira.com/"> http://download.tepira.com </a>


2. Preinstall
=============
- Install HiSuite (During installation allow install adb)
- In phone allow USB debugging (Preferences -> Developer)
- Connect to PC


3. Root
=======
- Run VRoot
- Click on "ROOT" button

After restart phone you should see "Kinguser" (SuperUser, SuperSU) app


4. Install Recovery
===================
- Run "H3C_flash_recovery" as admin
- Install recovery (option 1)
- Exit (option 2)
- Unplug phone from PC
- Turn off phone

5. Install Custom rom
=====================
- Format microSD card in PC and copy H3Crom.zip and Gapps.zip to card
- Put card to the Phone
- Turn on the phone by pressing: combo "vol+" + "Power ON" (recovery mode)
- Now choose option ``"backup and restore"`` (option 5 in main menu)
- After backup ``"wipe data/factory reset"`` ("option 3" in main menu)
- After factory reset choose ``"install zip from sdcard"`` (option 2 in main menu)
- Now choose H3Crom.zip
- After successfull instalation H3Crom.zip choose Gapps.zip and install again
- ``"wipe cache partition"`` (option 4 in main menu)
- Now ``"Wipe Dalvik cache"`` in ``"advanced"`` (option 7 in main menu)
- ``"reboot system now"`` (option 1 in main menu)

Congrats you installed new custom rom 
