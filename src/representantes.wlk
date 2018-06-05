import liga.*
import equipos.*
import jugadores.*

class Representante{
	var pedidoPotencia // CORREGIR => LOS PEDIDOS DEBEN SER CLASES
	var pedidoVision
	var pedidoCombinado
	
	method establecerPedPotencia(_valor){
		pedidoPotencia = _valor
	}
	method establecerPedVision(_valor){
		pedidoVision = _valor
	}
	method establecerPedCombinado(_valor){
		pedidoCombinado = _valor
	}
	method prefiereDescartar(_jugador){
		return self.cumplePedPotencia(_jugador) or self.cumplePedVision(_jugador) or self.cumplePedCombinado(_jugador)
	}
	method cumplePedPotencia(_jugador){
		return _jugador.potencia() >= pedidoPotencia
	}
	method cumplePedVision(_jugador){
		return _jugador.visionGeneral() >= pedidoPotencia
	}
	method cumplePedCombinado(_jugador){
		return _jugador.potencia() >= pedidoPotencia
	}
}