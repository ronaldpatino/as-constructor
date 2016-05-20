package com.as.core

class DatosPersonales {

	
	Empleado empleado
	String lugarDeNacimiento
	String telefono1
	String telefono2
	String email
	String tipoDeSangre
	String estadoCivil='SOLTERO'
	String conyuge
	String nombreDelPader
	String nombreDeLaMadre

	DireccionProv direccion
	
	static embedded = ['direccion']


    static constraints = {
		estadoCivil inList:['SOLTERO','CASADO','UNION_LIBRE','DIVORCIADO','VIUDO']
		conyuge nullable:true
		nombreDelPader nullable:true
		nombreDeLaMadre nullable:true
		tipoDeSangre nullable:true
		email nullable:true
		telefono1 nullable:true
		telefono2 nullable:true
		lugarDeNacimiento nullable:true
		
    }
}
