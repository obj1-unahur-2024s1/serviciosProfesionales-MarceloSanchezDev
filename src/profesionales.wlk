import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {

	var universidad

	method universidad() {
		return universidad
	}

	method universidad(univ) {
		universidad = univ
	}

	method provinciasDondePuedeTrabajar() {
		return #{ "Entre Ríos", "Corrientes", "Santa Fe" }
	}

	method honorariosPorHora() {
		return 3000
	}

}

// a esta clase le faltan métodos
class ProfesionalVinculado {

	var universidad

	method universidad() {
		return universidad
	}

	method universidad(univ) {
		universidad = univ
	}

	method provinciasDondePuedeTrabajar() {
		return universidad.provincia()
	}

	method honorariosPorHora() {
		return universidad.honorarios()
	}

}

// a esta clase le faltan atributos y métodos
class ProfesionalLibre {

	var universidad
	const provincias = #{}
	var honorarios

	method universidad() {
		return universidad
	}

	method universidad(univ) {
		universidad = univ
	}

	method setProvincias(prov) {
		provincias.add(prov)
	}

	method provinciasDondePuedeTrabajar() {
		return provincias
	}

	method setHonorarios(honor) {
		honorarios = honor
	}

	method honorariosPorHora() {
		return honorarios
	}

}

const juana = new ProfesionalVinculado(universidad = universidadDeRosario)

const melina = new ProfesionalAsociado(universidad = universidadDeCorrientes)

const rocio = new ProfesionalLibre(universidad = universidadDeHurlingham, honorarios = 5000)

const luciana = new ProfesionalLibre(universidad = universidadDeRosario, honorarios = 3200)

