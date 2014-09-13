Huawei3C
========

Huawei Honor 3C H30-U10

This guide shows how to make this phone more usefull (root, custom rom).
This guide also helps repair some issues with phone.

!!! WARNING !!!
We are not responsible for any damage

1. Download
===========
Download necessery files from git.

  download zip of all this repository or:
  ```shell
  git clone https://github.com/Tepira/Huawei3C
  ```


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
- Put card to Phone
- Turn on phone by pressing: combo "vol+" + "Power ON" (recovery mode)
- Now choose option Backup (option 5)
- After backup wipe data/factory reset (option 3)
- After factory reset choose Install from SD (option 2)
- Now choose H3Crom.zip
- After success instalation H3Crom.zip choose install Gapps.zip
- Wipe cache (option 4)
- Wipe Dalvik cache (option 7)
- Now restart (option 1)

Congrats you installed new custom rom 
