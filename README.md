## Triangle deadzone

Features:  
• Triangle deadzone  
• Paddle support for Heart Controller

Install: `./build.sh`  
Usage: `./enable.sh [deadzone from 0-100 (default 35)]`

Also, `/sys/module/xpad/parameters/corner_deadzone` can control the corner deadzone size module parameter

Note - his is only tested with these controllers:  
• Thrustmaster Heart Controller  
• GameSir Pro G7 (Shadow Ember)  

The main deadzone shape stuff is in `xpad_corner_expand` inside `xpad.c`

Math is [here](https://www.desmos.com/calculator/ua0rrt9az8)  