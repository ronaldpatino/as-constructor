package com.as.core

import groovy.transform.ToString

@ToString(includePackage=false,includeNames=true,excludes='dateCreated,lastUpdated')
class BajaEmpleado {
	
	Empleado empleado
	
	Date fecha
	
	String comentario
	
	Date dateCreated
	
	Date lastUpdated


    static constraints = {
		comentario nullable:true
		
    }
	
	
}