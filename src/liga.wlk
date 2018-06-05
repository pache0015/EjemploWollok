import equipos.*
import jugadores.*
import representantes.*

object liga{
	var equipos = #{}
	
	method equipoConMasVision(){
		return self.calcularVisionDeEquipos()
	}
	method calcularVisionDeEquipos(){
		return equipos.max({equipo => equipo.vision()})
	}
}



// REPO DE CARLOS A BAJAR: por mail

// jugador ==== method posiblesDestinos() = self.liga().integrantes().filter({int => int.leInteresa(self)})
// 		method liga() =duenoDelPase().liga()

// Liga === var representantes = #{}
			//method integrantes() = return equipos + representantes