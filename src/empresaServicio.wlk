import profesionales.*
import universidades.*

class EmpresaDeServicio{
	var honorarioRecomendado 
	const cantidadProfesionales = []
	
	method honorarioRecomendado() = honorarioRecomendado
	method honorarioRecomendado(unValor) { honorarioRecomendado = unValor}
	method cantidadProfesionales() = cantidadProfesionales
	method agregarProfesional(unProfesional){
		cantidadProfesionales.add(unProfesional)
	}
	method profesionalesCaros(){
		return cantidadProfesionales.filter({p => p.honorariosPorHora() > self.honorarioRecomendado()}).asSet()
	}
	method universidadesFormadoras(){
		return cantidadProfesionales.map({u => u.universidad()}).asSet()
	}
	method profesionalMasBarato(){
		return cantidadProfesionales.min({c => c.honorariosPorHora()})
	}
	
	method genteAcotada(){
		return cantidadProfesionales.any({p =>p.provinciasDondePuedeTrabajar().size() > 3})
	} //tiene que dar true y da false
}


const empresaUno = new EmpresaDeServicio(honorarioRecomendado = 3500, cantidadProfesionales = [juana, melina, rocio, luciana])
