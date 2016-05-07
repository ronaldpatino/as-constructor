package com.as.core



import groovy.transform.ToString
import groovy.transform.EqualsAndHashCode


@ToString(includes='nombre,rfc',includeNames=true,includePackage=false)
@EqualsAndHashCode(includes='mombre,rfc')

class Proveedor {

	

	String rfc = 'XAXX010101000'

	Boolean activo = true

	String nombre

	String clave
	
	BigDecimal lineaDeCredito = 0.0

	Integer plazo=0

	Boolean vtoRevision=true

	

	String tipo

	Date dateCreated

	Date lastUpdated

	List direcciones

	List contactos

	

	static hasMany=[
		direcciones:Direccion,contactos:Contacto
	]

    static constraints = {
    	rfc size:12..13
    	nombre unique: true
    	
    	clave unique: true
    	tipo inList:['COMPRAS','GASTOS']
    	
    }

 	static mapping = {
 		direcciones cascade:"all-delete-orphan"
 	}


}


