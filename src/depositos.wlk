class Deposito {
	var formaciones = []
	
	
	method agregarFormacion(unaFormacion){
		formaciones.add(unaFormacion)
	}
	method conjuntoVagonMasPesadoDeFormacion(){
		return formaciones.map({unaFormacion => unaFormacion.vagonMasPesado()})
	}
	
	method necesitoConductorExperimentado(){
		return self.algunaFormacionEsCompleja()
	}

	method algunaFormacionEsCompleja() {
		return formaciones.any({unaFormacion => unaFormacion.soyCompleja()})
	}
	
	method agregarLocomotoraAUnaFormacion(unaLocomotora,unaFormacion){
		unaFormacion.agregarLocomotora(unaLocomotora)
	}
	
	
	}