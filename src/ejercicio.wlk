object liga{
	var equipos = #{}
	
	method equipoConMasVision(){
		return self.calcularVisionDeEquipos()
	}
	method calcularVisionDeEquipos(){
		return equipos.max({equipo => equipo.vision()})
	}
}

class Equipo{
	var jugadores = #{}
	
	method potencia(){
		return self.calcularPotencia()
	}
	method calcularPotencia(){
		return jugadores.max({jugador => jugador.potencia()})
	}
	method presicion(){
		return ( 3* self.valorIntDeJugadores() + self.pasesDeJugadores())
	}
	method valorIntDeJugadores(){
		return jugadores.sum({jugador => jugador.valorIntrinseco()})
	}
	method pasesDeJugadores(){
		return jugadores.sum({jugador => jugador.habilidadEnLosPases()})
	}
	method vision(){
		return self.calcularVision()
	}
	method calcularVision(){
		return jugadores.sum({jugador => jugador.visionGeneral()})
	}
}

class Jugador{
	var potencia
	var habilidadEnLosPases
	var visionDeJuego
	var visionDeCompaneros
	
	method asignarPotencia(_potencia){
		potencia = _potencia
	}
	method potencia(){
		return potencia
	}
	method asignarHabilidad(_habilidad){
		habilidadEnLosPases = _habilidad
	}
	method habilidad(){
		return habilidadEnLosPases
	}
	method asignarVisionDeJuego(_vision){
		visionDeJuego = _vision
	}
	method visionDeJuego(){
		return visionDeJuego
	}
	method asignarVisionDeCompaneros(_vision){
		visionDeCompaneros = _vision
	}
	method visionDeCompaneros(){
		return visionDeCompaneros
	}
	method visionGeneral(){
		return visionDeJuego + visionDeCompaneros
	}
	method valorIntrinseco()
}
class Atacante inherits Jugador{
	var anotacion
	
	method asignarAnotacion(_valor){
		anotacion = _valor
	}
	method anotacion(){ // ================CANDIDATO PARA SER BORRADO==================
		return anotacion
	}
	override method valorIntrinseco(){
		return anotacion
	}
}
class Defensor inherits Jugador{
	var quite
	
	method asiganarQuite(_valor){
		quite = _valor
	}
	method quite(){ // ================CANDIDATO PARA SER BORRADO==================
		return quite
	}
	override method valorIntrinseco(){
		return quite
	}
}