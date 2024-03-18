# AgonElectron
Binary distribution of Agon Electron HAL and OS. This contains both the ESP and EZ80 images for Quark and Electron. Plus the adapted Flash tool that allows you to switch between EZ80 and ESP32 OS-es without reflashing.
Check out my video on [Youtube](https://youtu.be/Hr3Ip_Gg2ac?si=dPzmuUq9fehGiG_w) for more information.

#### Credits
* Quark VDP and MOS is the official Agon Light OS and is by Dean Belfield (@breakintoprogram)
* Flash tool is orginally by Jeroen Venema (@envenomator)
* ESP32 firmware switching by Sascha Schneider (@astralaster)

## Preparation
1. Download this repository: [link](https://github.com/S0urceror/AgonElectron/zipball/main))
2. Put the contents of this repository in the root of an SD card.
3. Flash the latest Quark VDP: ```flash vdp firmware/vdp-1.04.bin```
4. Flash Electron HAL, VDP replacement: ```flash vdp firmware/AgonElectronHAL-0.9.0.bin```
5. Flash combined Quark MOS / Electron OS image: ```flash mos firmware/MOS-1.0.4-EOS-0.9.0.bin```

## Switching
* Switch between ESP32 images (Quark VDP / Electron HAL) with the following command: ```flash vdp-switch```
* Switch between EZ80 images (Quark MOS / Electron OS) with the following command: ```flash mos-switch```

Currently we default back to MOS on the EZ80 after a reboot. The ESP32 image is retained after reboot but can always be switched with the vdp-switch command.

## Start the MSX personality
* Make sure you have selected Electron HAL on the ESP32 and Electron OS on the EZ80.
* Run
``` open msx.bat ```

Now the MSX 1 BIOS boots on the Agon Light. You will be put into MSX-BASIC which is compatible to GW-BASIC 1.0. You can use the following enhanced commands:
``` 
FILES                        - shows the files on the SD card
_CD ("/msx")                 - changes to the /msx folder
OPEN "SD:abc.txt"            - opens a file for INPUT/OUTPUT/APPEND
LOAD "SD:sound.bas"          - loads an ASCII basic listing
```

## MSX games
* Make sure you have selected Electron HAL on the ESP32 and Electron OS on the EZ80.
* Run
``` open kvalley.bat ```
* Or
``` open yiear2.bat ```

## Start the CPM personality
* Make sure you have selected Electron HAL on the ESP32 and Electron OS on the EZ80.
* Run
``` open cpm.bat ```

## Start games in the SG-1000 personality
* Make sure you have selected Electron HAL on the ESP32 and Electron OS on the EZ80.
* Run
``` open gulkave.bat ```