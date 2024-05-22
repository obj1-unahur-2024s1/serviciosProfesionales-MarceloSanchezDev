import solicitantes.*
import profesionales.*
class Empresa {
	const serviciosASolicitantes = #{}
	const profesionales = #{}
	var honorarios

	method contratarProfesional(profesional) {
		profesionales.add(profesional)
	}
	method clientes(){
		return serviciosASolicitantes
	}
	method profesionales() {
		return profesionales
	}
	method darServicio(solicitante){
		if(self.sePuedeSatisfacerSolicitante(solicitante)){
			const profesional = self.profesionales().find({pro => solicitante.puedeSerAtendido(pro)})
			profesional.cobrarDinero(profesional.honorariosPorHora())
			serviciosASolicitantes.add(solicitante)
			return "se satisfacio exitosamente"
		}else{
			return "no se puede satisfacer solicitante"
		}
	}
	method honorarios() {
		return honorarios
	}

	method catProfesionalesDe(universidad) {
		return profesionales.filter({ prof => prof.universidad() == universidad }).size()
	}

	method conjProfesionalesCaros() {
		const profesionalesCaros = profesionales.filter({ prof => prof.honorariosPorHora() > self.honorarios() })
		return profesionalesCaros.asSet().size()
	}

	method conjUniversidadesFormadoras() {
		const universidadesFormadoras = profesionales.map({ prof => prof.universidad() })
		return universidadesFormadoras.asSet()
	}

	method profesionalMasBarato() {
		return profesionales.min({ prof => prof.honorariosPorHora() })
	}

	method esDeGenteAcotada() {
		return profesionales.all({ prof => !(prof.provinciasDondePuedeTrabajar().size() > 3) or (prof.provinciasDondePuedeTrabajar().size() == 3) })
	}

	method sePuedeSatisfacerSolicitante(solicitante) {
		return self.profesionales().any({ prof => solicitante.puedeSerAtendido(prof) })
	}
	method cantClientes(){
		return serviciosASolicitantes.size()
	}
	method estaElCliente(cliente){
		return serviciosASolicitantes.contains(cliente)
	}

}

const empresa1 = new Empresa(honorarios = 3500)

