import equipos.*
import jugadores.*
import representantes.*

object liga{
	var equipos = #{}
	var representantes = #{}
	
	method equipoConMasVision(){
		return self.calcularVisionDeEquipos()
	}
	method calcularVisionDeEquipos(){
		return equipos.max({equipo => equipo.vision()})
	}
	method integrantes(){
		return equipos + representantes
	}
}



// REPO DE CARLOS A BAJAR: por mail

// jugador ==== method posiblesDestinos() = self.liga().integrantes().filter({int => int.leInteresa(self)})
// 		method liga() =duenoDelPase().liga()

// Liga === var representantes = #{}
			//method integrantes() = return equipos + representantes