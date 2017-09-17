import SwiftyGPIO
import Glibc
 
let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
var pin17 = gpios[.P17]!
var pin18 = gpios[.P18]!
pin17.direction = .OUT
pin18.direction = .OUT
pin17.value = 0
pin18.value = 1 
 
repeat {
	pin17.value = (pin17.value == 0) ? 1 : 0
	pin18.value = (pin18.value == 0) ? 1 : 0
	usleep(500 * 1000)
} while(true)
