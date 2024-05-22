import profesionales.*
class Persona {

	var provincia
	method provincia(){
		return provincia
	}
	method puedeSerAtendido(profesional) {
		return profesional.provinciasDondePuedeTrabajar() == provincia
	}

}

class Insitucion {

	const listaUniversidades = #{}

	method agregarUniversidades(conj) {
		conj.forEach({ uni => listaUniversidades.add(uni)})
	}
	method universidades(){
		return listaUniversidades
	}

	method puedeSerAtendido(profesional) {
		return self.universidades().any({uni => uni == profesional.universidad()})
	}

}

class Club {

	const provincias = #{}

	method agregarProvincias(conj) {
		conj.forEach({ prov => provincias.add(prov)})
	}

	method provincias() {
		return provincias
	}

	method puedeSerAtendido(profesional) {
		return self.provincias().any({ prov => prov == profesional.provinciasDondePuedeTrabajar()})
		 or self.provincias().any({prov => profesional.provinciasDondePuedeTrabajar().any({proPro=> prov == proPro})})
	}

}

const club1 = new Club()
const persona1 = new Persona(provincia = "Buenos Aires")
const institucion1 = new Insitucion()

