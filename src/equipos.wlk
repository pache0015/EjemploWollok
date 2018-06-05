import liga.*
import jugadores.*
import representantes.*

class Equipo{
	var jugadores = #{}
	
	method potencia(){
		return self.calcularPotencia()
	}
	method calcularPotencia(){
		return jugadores.max({jugador => jugador.potencia()})
	}
	method presicion(){
		return jugadores.sum({jugador => jugador.presicion()})
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
	method prefiereDescartar(_jugador)
	
	method presicionPromedio(){
		return jugadores.sum({jugador => jugador.presicion()}) / jugadores.size()
	}
}
class Lirico inherits Equipo{
	
	override method prefiereDescartar(_jugador){
		return (_jugador.visionGeneral() + _jugador.presicion()) <= 5
	}
	//override method interesado(_jugador){
		//return !(_jugador.presicion()) > (self.presicionPromedio() + 2)
	//}
}
class Rustico inherits Equipo{
	
	override method prefiereDescartar(_jugador){
		return _jugador.habilidad() > _jugador.potencia()
	}
}
class Organizado inherits Equipo{
	
	override method prefiereDescartar(_jugador){
		var atributos = 0
		
		if (_jugador.potencia() > 5) {atributos += 1}
		
		if (_jugador.presicion() > 5) {atributos += 1}
		
		if (_jugador.visionGeneral() > 5) {atributos += 1}
		
		return atributos >= 2
	}
}