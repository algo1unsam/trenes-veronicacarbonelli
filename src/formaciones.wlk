class Formacion{
	
	var locomotoras = []
	var vagones = []
	
	method agregarLocomotora(unaLocomotora){
		if(self.puedeMoverse()){}
		else{
			locomotoras.add(unaLocomotora)
			}
	}
	method agregarVagon(unVagon){
		vagones.add(unVagon)
	}
	
	method cuantosVagonesLivianosTengo(){
		return vagones.filter({unVagon => unVagon.soyLiviano()}).size()
	}
	
	method velocidadMaxima(){
		locomotoras.min({unaLocomotora => unaLocomotora.velocidadMaxima()})
	}
	method esEficiente(){
		locomotoras.any({unaLocomotora => unaLocomotora.soyEficiente()})
	}
	method puedeMoverse(){
		return self.arrastreUtilTotal() >= self.pesoMaximoTotalDeVagones()
	}
	method arrastreUtilTotal() {
		return locomotoras.sum({unaLocomotora => unaLocomotora.arrastreUtil()}) 
	}
	method pesoMaximoTotalDeVagones() {
		return vagones.sum({unVagon => unVagon.pesoMaximo()})
	}
	method kilosFaltantesDeEmpuje(){
		if (self.puedeMoverse()){
			return 0
		}
		else{
			return self.pesoMaximoTotalDeVagones() - self.arrastreUtilTotal()
		}
	}
	method vagonMasPesado(){
		return vagones.max({unVagon => unVagon.pesoMaximo()})
	}
	
	method soyCompleja(){
		return  self.cantidadDeUnidades() > 20 || self.pesoTotalDeUnidades() > 10000
	}
	
	method cantidadDeUnidades(){
		return locomotoras.size() + vagones.size()
	}
	method pesoTotalDeUnidades() {
		return self.pesoDeLocomotoras() + self.pesoDeVagones()
	}
	
	method pesoDeLocomotoras(){
		return locomotoras.sum({unaLocomotora => unaLocomotora.pesoPropio()})
	}
	method pesoDeVagones() {
		return vagones.sum({unVagon => unVagon.pesoMaximo()})
	}
	
	
	
	
}

	
