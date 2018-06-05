import equipos.*
import jugadores.*

object liga{
	var equipos = #{}
	
	method equipoConMasVision(){
		return self.calcularVisionDeEquipos()
	}
	method calcularVisionDeEquipos(){
		return equipos.max({equipo => equipo.vision()})
	}
}



