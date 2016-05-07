package com.as.core

class ContactoEmpleado {
	
	Empleado empleado
	String nombre
	String parentesco
	String telefono1
	String telefono2
	String comentario
	
	

    static constraints = {
		telefono1 nullable:true
		telefono2 nullable:true
		parentesco inList:['PADRE','MADRE','CONYUGE','HIJO','HERMANO','CONOCIDO','ABUELO','ABUELA','TIO','TIA','SUEGRO','SUEGRA','FAMILIAR','AMIGA','AMIGO']
		parentesco maxSize:50
		comentario nullable:true
		
    }
}
