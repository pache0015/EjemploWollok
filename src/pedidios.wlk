import liga.*
import equipos.*
import jugadores.*
import representantes.*

class PedidoPotencia{
	var valorMin 
	
	method establecerValorMin(_valor){
		valorMin = _valor
	}
	method cumpleJugadorParaNoDescarte(_jugador){
		return valorMin < _jugador.potencia()
	}
}
class PedidoVision{
	var valorMin 
	
	method establecerValorMin(_valor){
		valorMin = _valor
	}
	method cumpleJugadorParaNoDescarte(_jugador){
		return valorMin < _jugador.potencia()
	}
}
class PedidoCombinado{
	var valorMin 
	var valorMax
	
	method establecerValorMin(_valor){
		valorMin = _valor
	}
	method establecerValorMax(_valor){
		valorMax = _valor
	}
	method cumpleJugadorParaNoDescarte(_jugador){
		return valorMin < _jugador.habilidad()+_jugador.presicion() < valorMax
	}
}