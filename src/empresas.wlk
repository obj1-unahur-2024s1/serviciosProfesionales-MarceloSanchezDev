class Empresa {
	const profesionales = #{}
	var honorarios 
	
	method contratarProfesional(profesional){
		profesionales.add(profesional)
	}
	method profesionales(){
		return profesionales
	}
	method honorarios(){
		return honorarios
	}
	method catProfesionalesDe(universidad){
		return profesionales.filter({prof => prof.universidad() == universidad}).size()
	}
	method conjProfesionalesCaros(){
		const profesionalesCaros = profesionales.filter({prof => prof.honorariosPorHora() > self.honorarios()})
		return profesionalesCaros.asSet().size()
	}
	method conjUniversidadesFormadoras(){
		const universidadesFormadoras = profesionales.map({prof => prof.universidad()})
		return universidadesFormadoras.asSet()
	}
	method profesionalMasBarato(){
		return profesionales.min({prof => prof.honorariosPorHora()})
	}
	method esDeGenteAcotada(){
		return profesionales.all({prof => !(prof.provinciasDondePuedeTrabajar().size() > 3) or (prof.provinciasDondePuedeTrabajar().size() == 3) })
	}
}

const empresa1 = new Empresa(honorarios = 3500)