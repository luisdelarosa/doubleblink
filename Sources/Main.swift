import SwiftyGPIO
import Glibc
// why isn't it called BlueSignals?
import Signals
 
let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
var pinA = gpios[.P17]!
var pinB = gpios[.P21]!
pinA.direction = .OUT
pinB.direction = .OUT
pinA.value = 0
pinB.value = 1 
 
Signals.trap(signal: .int) { signal in
	// Ensure we turn off both LEDs before exiting
	pinA.value = 0
	pinB.value = 0

	// Leave the program, otherwise you effectively disable Control-C
	exit(0)
}

repeat {
	pinA.value = (pinA.value == 0) ? 1 : 0
	pinB.value = (pinB.value == 0) ? 1 : 0
	usleep(500 * 1000)
} while(true)
