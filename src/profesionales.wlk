import universidades.*
import empresaServicio.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora(){
		return universidad.honorarioRecomendado()
	}
	method provinciasDondePuedeTrabajar() = universidad.provincia(	)
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorariosPorHora
	const provinciasDondePuedeTrabajar = #{}
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() = honorariosPorHora
	method honorariosPorHora(unValor) { honorariosPorHora = unValor}
	method provinciasDondePuedeTrabajar() = provinciasDondePuedeTrabajar
	method agregarProvincia(unaProvincia){
		provinciasDondePuedeTrabajar.add(unaProvincia)
	}
}

const juana = new ProfesionalVinculado(universidad= universidadRosario)
const melina = new ProfesionalAsociado(universidad = universidadCorrientes)
const rocio = new ProfesionalLibre(universidad = universidadHurlingham, honorariosPorHora = 5000, provinciasDondePuedeTrabajar = #{"Buenos Aires", "Cordoba", "Santa Fe"})
const luciana = new ProfesionalLibre(universidad = universidadRosario, honorariosPorHora = 3200, provinciasDondePuedeTrabajar = #{"Entre Rios", "Santa Fe"})

