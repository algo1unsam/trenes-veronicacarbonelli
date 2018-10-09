class Vagon{
	
	method pesoMaximo()
	method puedoLlevarPasajeros()
	method puedoLlevarCarga() 
	
	method soyLiviano() {
		return self.pesoMaximo() < 2500
	}
	class VagonPasajero inherits Vagon {
	var largoEnMetros
	var anchoUtilEnMetros

	method cantidadDePasajerosQuePuedoTransportar() {
		if (anchoUtilEnMetros < 2.5) {
			return largoEnMetros * 8
		}
		else {
			return largoEnMetros * 10
		}
	}

	override method puedoLlevarCarga() {
		return false
	}
	override method puedoLlevarPasajeros() {
		return true
	}

	override method pesoMaximo() {
		return self.cantidadDePasajerosQuePuedoTransportar() * 80
	}
}

// en cada vagon de carga van dos GUARDAS

class VagonCarga inherits Vagon {
	var cargaMaximaEnKG

	override method puedoLlevarCarga() {
		return true
	}
	override method puedoLlevarPasajeros() {
		return false
	}

	override method pesoMaximo() {
		return cargaMaximaEnKG + 160
	}
}

	
