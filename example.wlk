/** First Wollok example */
object paquete {
	var estaPago = true
	
	method cambiarEstado() {
		estaPago = !estaPago
	}

	method estaPago() = estaPago
}

object puente {
	method puedePasar(mensajero) = paquete.estaPago() && mensajero.peso() <= 1000
}

object matrix {
	method puedePasar(mensajero) = paquete.estaPago() && mensajero.llamada()
}

object chuck {
	method peso() = 900
	
	method llamada() = true
}

object neo {
	const peso = 0
	var tieneCredito = true
	
	method peso() = peso
	
	method cambiarCredito() {
		tieneCredito = !tieneCredito
	}
	
	method llamada() = tieneCredito
}

object hawk {
	var pesoPropio = 0
	var vehiculo = bici

	method cambiarACamion() {
		vehiculo = camion
	}

	method cambiarABici() {
		vehiculo = bici
	}
	
	method pesoPropio(_pesoPropio) {
		pesoPropio = _pesoPropio
	}
	
	method peso() = pesoPropio + vehiculo.peso()
	
	method llamada() = false
}

object bici {
	method peso() = 10
}

object camion {
	var acoplado = 0
	const pesoCamion = 500
	
	method acoplado(_acoplado) {
		acoplado = _acoplado
	}
	
	method peso() = pesoCamion + (acoplado * pesoCamion)
}