# o3cpatch

Firmware mods for the SayoDevice O3C. Originally written by khang06 at https://github.com/khang06/misc

![o3cpatch1](https://github.com/Vali0004/o3cpatch/blob/main/.img/regular.png?raw=true)
![o3cpatch2](https://github.com/Vali0004/o3cpatch/blob/main/.img/inverse.png?raw=true)
![o3cpatch3](https://github.com/Vali0004/o3cpatch/blob/main/.img/menu.png?raw=true)
![image](https://github.com/Vali0004/o3cpatch/blob/main/.img/scene-demo.png?raw=true)

Web version can be found at https://vali0004.github.io/o3cpatch/

## Features
* USB command to retrieve raw analog data and temporarily change LED colors ([modified McOsu demo](https://files.catbox.moe/sgqusr.mp4))
* Custom menu backgrounds using screen layer 1 (Disable main screen on sleep screen and change to "Image")
* New widgets/built-in components
    * (ID 16) Custom horizontal key pressure display
    * (ID 17) Custom horizontal key pressure display (reversed)
    * (ID 18) Keys per second counter
    * (ID 19) Demoscene-ish plasma effect
    * (ID 20) Keypad uptime
    * (ID 21) All keys summed into one value (Key trigger is number of digits allowed in the string)
* Disable boot screen
* Custom fonts

## How to build?
You need a few things, but mostly the RISC-V toolchain and GNU Make
* Install [Python3](https://www.python.org/downloads/release/python-3130/)
* Install the RISC-V [Toolchain](https://gnutoolchains.com/risc-v/)
* Run `make`
* Voliá, it will build, run pip, run the generate patch, and flash the device all in one go.

## How to flash?
You have three options. All of then require you to place the firmware in `firmware`
1. Use SayoDevice's offical firmware from their [download CDN](https://tc1.sayobot.cn:25225/firmware/)
2. Use my upgrade.exe from tools/ and run `make flash` in the root of the source.
3. Option 2 but without GNU make. Run `tools\upgrade -r`.

## Flashing doesn't work
Well, that mostly depends. It is using SayoDevices upgrade tool, but it's finky. You can try a few things
* Putting the device into bootloader mode by holding down the encoder knob for 2-3 seconds, going into Device -> Factory recovery and pressing "Jump to bootloader"
* Simply try again. Run the make command or upgrade command
* Using a different USB-C cable. The standard for USB-C is muddy, and not all cables work. However, this is *highly* unlikely and only works in some rare cases

## Any other problems?
Make a issue! I'm happy to troubleshoot things with you, but I'm not always free.
- You can also read through the [rentry for the O3C](https://rentry.org/o3c)