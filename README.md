# doubleblink
Blink two LEDs on a Raspberry Pi 3 using SwiftyGPIO

This makes it a little more interesting as a demo. To use:
1. Hook up ground -> red LED -> resistor -> pin 17
2. Hook up ground -> green LED -> resistor -> pin 21

To build and run, execute:
swift build && ./.build/debug/doubleblink
