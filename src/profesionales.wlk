import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {

	var dineroCobrado = 0
	var universidad

	method universidad() {
		return universidad
	}

	method cobrarDinero(dinero) {
		asociacionDeProfesionales.dineroDeProfesionales(dinero)
	}

	method universidad(univ) {
		universidad = univ
	}

	method recibirTransferencia(cant) {
		dineroCobrado += cant
	}

	method provinciasDondePuedeTrabajar() {
		return #{ "Entre Ríos", "Corrientes", "Santa Fe" }
	}

	method honorariosPorHora() {
		return 3000
	}

	method dineroCobrado() {
		return dineroCobrado
	}

}

// a esta clase le faltan métodos
class ProfesionalVinculado {

	var dineroCobrado = 0
	var universidad

	method universidad() {
		return universidad
	}

	method cobrarDinero(dinero) {
		universidad.agregarDonaciones(dinero / 2)
		dineroCobrado += dinero / 2
	}

	method recibirTransferencia(cant) {
		dineroCobrado += cant
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

	method dineroCobrado() {
		return dineroCobrado
	}

}

// a esta clase le faltan atributos y métodos
class ProfesionalLibre {

	var dineroCobrado = 0
	var universidad
	const provincias = #{}
	var honorarios

	method universidad() {
		return universidad
	}

	method dineroCobrado() {
		return dineroCobrado
	}

	method cobrarDinero(dinero) {
		dineroCobrado += dinero
	}

	method universidad(univ) {
		universidad = univ
	}

	method trasferirDinero(prof, cant) {
		prof.recibirTransferencia(cant)
		dineroCobrado = dineroCobrado - cant
	}

	method recibirTransferencia(cant) {
		dineroCobrado += cant
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

object asociacionDeProfesionales {

	var dineroAcumulado = 0

	method dineroAcumulado() {
		return dineroAcumulado
	}

	method dineroDeProfesionales(dinero) {
		dineroAcumulado += dinero
	}

}

const juana = new ProfesionalVinculado(universidad = universidadDeRosario)

const melina = new ProfesionalAsociado(universidad = universidadDeCorrientes)

const rocio = new ProfesionalLibre(universidad = universidadDeHurlingham, honorarios = 5000)

const luciana = new ProfesionalLibre(universidad = universidadDeRosario, honorarios = 3200)

