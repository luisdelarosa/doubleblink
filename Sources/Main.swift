import SwiftyGPIO
import Glibc
 
let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
var pinA = gpios[.P17]!
var pinB = gpios[.P21]!
pinA.direction = .OUT
pinB.direction = .OUT
pinA.value = 0
pinB.value = 1 
 
repeat {
	pinA.value = (pinA.value == 0) ? 1 : 0
	pinB.value = (pinB.value == 0) ? 1 : 0
	usleep(500 * 1000)
} while(true)
