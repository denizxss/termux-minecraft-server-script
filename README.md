# termux-minecraft-server-script
 This script allows you to open Minecraft server easily from your phone.

> [!WARNING]  
> Above 1.20.4 versions requires JDK 21, official Termux repos have JDK17. Those versions won't be able to use until JDK21 added.

> [!CAUTION]
> Crashes and overheat may occur use this at your own risk.
 

 ### To Do

- [x] Add custom server.jar installing options to script (Only Vanilla Minecraft)


## Installation
1. Install Git
 ```
 pkg install git
 ```
2. Clone the repo
```
git clone https://github.com/denizxss/termux-minecraft-server-script.git
```


## Start Script & Create Server
1. Open script directory
```
cd termux-minecraft-server-script
```
2. Make scripts executable
```
chmod +x main.sh
```

```
chmod +x launch.sh
```
3. Launch script
```
./main.sh
```
> [!TIP]
> Don't forget to change IP address and lower view distance for less memory and CPU usage.

## Launch Already Existing Server

```
./launch.sh
```

