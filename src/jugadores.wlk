import liga.*
import equipos.*
import representantes.*

class Jugador{
	var potencia
	var habilidadEnLosPases
	var visionDeJuego
	var visionDeCompaneros
	var duenoDePase
	
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
	method presicion(){
		return ( 3* self.valorIntrinseco() + self.habilidad())
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
	
	method asignarDuenoDePase(_dueno){
		duenoDePase = _dueno
	}
	method duenoDePase(){
		return duenoDePase
	}
	method riesgoLaboral(){
		return duenoDePase.prefiereDescartar(self)
	}
}






//===============SUBCLASES================
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