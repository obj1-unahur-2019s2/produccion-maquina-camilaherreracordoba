object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]

	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	method algunDiaSeProdujo_Any(cantidad){
		//devuelve un booleano  
		produccionPorDia.any({ pd => pd == cantidad })
	}
	
	method algunDiaSeProdujo(cantidad) {
		// retorna un booleano si es que contiene x elemento
		return produccionPorDia.contains(cantidad)
	}
	
	method maximoValorDeProduccion() {
		return produccionPorDia.max()
	}
	
	method valoresDeProduccionPares() {
		return produccionPorDia.filter({num => num % 2 == 0 })
	}
	
	method valoresDeProduccionPares_correccion() {
		// even sirve para indicar un número par
		return produccionPorDia.filter({num => num.even() })
	}
	
	method produccionEsAcotada(n1,n2) {
		return produccionPorDia.all({ num => num.between(n1, n2)})
	}
	
	method produccionesSuperioresA(cuanto) {
		return produccionPorDia.filter({ num => num > cuanto})
	}
	
	method produccionesSumando(n) {
		// se usa un "transformer", indicado como map
		return produccionPorDia.map({ num => num +n })
	}
	
	method totalProducido() {
		return produccionPorDia.sum()
	}
	
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}
	
	method cantidadProduccionesMayorALaPrimera() {
		// no está mal, pero...
		return produccionPorDia.filter({num => num > produccionPorDia.first()}).size()
	}
	
	method cantidadProduccionesMayorALaPrimera_correccion() {
		// para ir contando los elemento que cumplen la condición
		return produccionPorDia.count({num => num > produccionPorDia.first()})
	}
	
}
