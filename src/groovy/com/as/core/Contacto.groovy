package com.as.core

import groovy.transform.ToString
import groovy.transform.EqualsAndHashCode

@ToString(includes='nombre,tipo',includeNames=true,includePackage=false)
@EqualsAndHashCode(includes='nombre,puesto')
class Contacto {
 

	String nombre

	String puesto

	String email

	String telefono

	String celular

	String tipo 

    Date dateCreated

    Date lastUpdated
   

    static constraints = {
    	email email:true
    	telefono nullable:true
    	celular nullable:true
    	tipo inList:['PRINCIPAL','SECUNDARIO','OPCIONAL']
        dateCreated nullable:true
        lastUpdated nullable:true
    }

     static mapping={
    		 
    }
}
