import liga.*
import jugadores.*

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