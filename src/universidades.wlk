class Universidad {
	var totalDonaciones = 0
	var provincia
	var honorarios

	method provincia() {
		return provincia
	}
	method agregarDonaciones(donacion){
		totalDonaciones += donacion
	}

	method provincia(prov) {
		provincia = prov
	}

	method honorarios() {
		return honorarios
	}

	method honorarios(hono) {
		honorarios = hono
	}

}

const universidadDeSanMartin = new Universidad(provincia = "Buenos Aires", honorarios = 3500)

const universidadDeRosario = new Universidad(provincia = "Santa Fe", honorarios = 2800)

const universidadDeCorrientes = new Universidad(provincia = "Corrientes", honorarios = 2200)

const universidadDeHurlingham = new Universidad(provincia = "Buenos Aires", honorarios = 8800)

