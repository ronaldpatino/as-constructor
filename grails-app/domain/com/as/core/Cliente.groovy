package com.as.core

import groovy.transform.ToString
import groovy.transform.EqualsAndHashCode

@ToString(includes='razonSocial,rfc',includeNames=true,includePackage=false)
@EqualsAndHashCode(includes='razonSocial,rfc,grupoRfc')
class Cliente {

	

	String apellidoMaterno

	String apellidoPaterno

	String nombres

	String razonSocial

	String clave

	String rfc

	Contacto contacto

	Long   grupoRfc=0

	String curp

	Boolean fisica=false

	Boolean activo=false

	Boolean permitirCheque=false

	Boolean juridico=false

	Boolean cedula=false

	BigDecimal chequesDevueltos

	Date dateCreated

	Date lastUpdated

	List direcciones

	
	

	static hasMany=[direcciones:Direccion]

	static embedded = ['contacto']



    static constraints = {
    	apellidoPaterno nullable:true
    	apellidoMaterno nullable:true
    	nombres nullable:true
    	rfc maxSize:13
    	curp nullable:true,maxSize:18
    	chequesDevueltos nullable:true

    	
    	dateCreated nullable:true
    	lastUpdated nullable:true

    }

    static mapping={
    	
    	rfcCliente composite: ['rfc', 'grupoRfc'], unique: true 
    	direcciones cascade:"all-delete-orphan"
    	
    }
}
