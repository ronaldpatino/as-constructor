




navigation={
	app{
		catalogos(){
			cliente(controller:'cliente',action:'index'){
			catalogo(controller:'cliente',action:'index')
			direccion(controller:'cliente',action:'agregarDireccion')
			}
			proveedor(controller:'proveedor',action:'index')
			empleados(controller:'empleado',action:'index')
			
			perfilEmpleado(controller:'perfilEmpleado',action:'index')
			productos(controller:'producto',action:'index')
			herramientaEquipo(controller:'herramienta',action:'index')

		}
		 empleado(){
		 		datosPersonales(action:'datosPersonales')
				contacto(action:'agregarContacto')
		 }
		operaciones(){
			cotizaciones(controller:'cotizacion',action:'index')
		}
		info(view:'info')
	}
	
}