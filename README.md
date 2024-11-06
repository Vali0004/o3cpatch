# o3cpatch

Firmware mods for the SayoDevice O3C. Originally written by khang06 at https://github.com/khang06/misc

![o3cpatch1](https://github.com/Vali0004/o3cpatch/blob/main/.img/regular.png?raw=true)
![o3cpatch2](https://github.com/Vali0004/o3cpatch/blob/main/.img/inverse.png?raw=true)
![o3cpatch3](https://github.com/Vali0004/o3cpatch/blob/main/.img/menu.png?raw=true)
![image](https://github.com/Vali0004/o3cpatch/blob/main/.img/scene-demo.png?raw=true)

## Features
* USB command to retrieve raw analog data and temporarily change LED colors ([modified McOsu demo](https://files.catbox.moe/sgqusr.mp4))
* Custom menu backgrounds using screen layer 1 (Disable main screen on sleep screen and change to "Image")
* New widgets/built-in components
    * (ID 16) Custom horizontal key pressure display
    * (ID 17) Custom horizontal key pressure display (reversed)
    * (ID 18) Keys per second counter
    * (ID 19) Demoscene-ish plasma effect
    * (ID 20) Keypad uptime
* Disable boot screen
* Custom fonts

## How to build?
You need a few things, but mostly the RISC-V toolchain and GNU Make
* Install [Python3](https://www.python.org/downloads/release/python-3130/)
* Install the RISC-V [Toolchain](https://gnutoolchains.com/risc-v/)
* Run `make`
* Voliá, it will build, run pip, run the generate patch, and flash the device all in one go.