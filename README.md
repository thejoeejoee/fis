# Fast IoT Solution - FIS
FIS is IoT platform for home automation based on Node-RED tool and ESP32 nodes with MicroPython firmware.

![basic FIS flow](https://github.com/thejoeejoee/fis/raw/master/title.png)

This is only metapackage used for cloning whole project:
* [fis-esp-firmware](https://github.com/thejoeejoee/fis-esp-firmware) - firmware pro ESP32 nodes
* [node-red-contrib-fis](https://github.com/thejoeejoee/node-red-contrib-fis) - extension for Node-RED tool
* [fis-doc](https://github.com/thejoeejoee/fis-doc) - text of bachelor thesis as a main part of this project
* [fis-node-red](https://github.com/thejoeejoee/fis-node-red) - example runtime for Node-RED

This package also includes `Makefile` rule `pack-disk` for deploying whole thesis as a package for submit.
