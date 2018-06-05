import liga.*
import equipos.*

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