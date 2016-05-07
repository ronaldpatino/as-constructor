package com.as.core


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import com.as.core.Cliente

@Transactional(readOnly = true)
class DireccionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Direccion.list(params), model:[direccionInstanceCount: Direccion.count()]
    }

    def show(Direccion direccionInstance) {
        respond direccionInstance
    }

    def create() {
        respond new Direccion(params)
    }

def crearDireccionCliente(Long id) {
      
      Cliente cliente=Cliente.get(id)
      Direccion direccion=new Direccion()
      
        [direccionInstance:direccion,clienteInstance:cliente]
        
    }


    def agregarDireccionCliente(Integer max){
        
        Cliente cliente=Cliente.get(params.id)
 
        def direcciones=cliente.getDirecciones()


        direcciones.each{
            println "Iterqndo"+it.id
        }

          params.max = Math.min(max ?: 1, 1)
        respond direcciones, model:[direccionInstanceCount: direcciones.size(),clienteInstance:cliente]
    }


    @Transactional
    def save(Direccion direccionInstance) {
        if (direccionInstance == null) {
            notFound()
            return
        }

        if (direccionInstance.hasErrors()) {
            respond direccionInstance.errors, view:'create'
            return
        }

        direccionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'direccion.label', default: 'Direccion'), direccionInstance.id])
                redirect direccionInstance
            }
            '*' { respond direccionInstance, [status: CREATED] }
        }
    }

@Transactional
    def salvar(Long id){
        Direccion direccion=new Direccion(params)
        direccion.validate()
        if(direccion.hasErrors()){
            flash.message="Errores de validacion"
            render view:'crearDireccionCliente',model:[direccionInstance:direccion,clienteInstance:cliente]
            return
        }
        def cliente=Cliente.get(id)

        cliente.addToDirecciones(direccion)
        cliente.save()
        flash.message="Direccion agregada al cliente ${cliente.razonSocial}"
        redirect controller:'cliente', action:'show', params:[id:cliente.id]
    }

    def edit(Direccion direccionInstance) {
        respond direccionInstance
    }

    @Transactional
    def update(Direccion direccionInstance) {
        if (direccionInstance == null) {
            notFound()
            return
        }

        if (direccionInstance.hasErrors()) {
            respond direccionInstance.errors, view:'edit'
            return
        }

        direccionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Direccion.label', default: 'Direccion'), direccionInstance.id])
                redirect direccionInstance
            }
            '*'{ respond direccionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Direccion direccionInstance) {

        if (direccionInstance == null) {
            notFound()
            return
        }

        direccionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Direccion.label', default: 'Direccion'), direccionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'direccion.label', default: 'Direccion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
