import profesionales.*
import empresaServicio.*
import universidades.*

class Persona {
	var provincia
	method provincia()= provincia
	method confProvincia(unaProvincia){
		provincia = unaProvincia
	}
	method puedeSerAtendido(unProfesional){
		return (self.provincia() == unProfesional.provinciasDondePuedeTrabajar())
	}
}

class Institucion{
	const universidades = []
	method universidades() = universidades
	method agregarUniversidad(unaUni){
		universidades.add(unaUni)
	}
	method puedeSerAtendido(unProfesional){
		return universidades.contains(unProfesional.universidad().provincia())
	}
}

class Club{
	const provincia = #{}
	method provincia() = provincia
	method agregarProvincia(unaProvincia){
		provincia.add(unaProvincia)
	}
	
	method puedeSerAtendido(unProfesional){
		return provincia.intersection(unProfesional.provinciasDondePuedeTrabajar()).size() > 0
	}
}

const club1 = new Club(provincia = ["Buenos Aires"])

