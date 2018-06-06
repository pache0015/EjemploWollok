import liga.*
import equipos.*
import jugadores.*

class Representante{
	var pedidos = #{}
	
	
	method prefiereDescartar(_jugador){
		return self.cumplePedido(_jugador) 
	}
	method cumplePedido(_jugador){
		return pedidos.any({pedido => pedido.cumpleJugadorParaNoDescarte(_jugador)})
	}
	method leInteresa(_jugador){
		return pedidos.any({pedido => pedido.cumpleParaInteres(_jugador)})
	}
	
}