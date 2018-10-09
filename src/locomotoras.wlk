class Locomotora{
	
	var pesoPropio
	var pesoMaximoQuePuedeArrarstrar
	var velocidadMaxima
	
	method arrastreUtil(){
		return pesoMaximoQuePuedeArrarstrar - pesoPropio
	}
	method velocidadMaxima(){
		return velocidadMaxima
	}
	method soyEficiente(){
		return pesoMaximoQuePuedeArrarstrar >= pesoPropio*5
	}
	
}