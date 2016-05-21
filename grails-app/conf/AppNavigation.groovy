




navigation={
	app{
		catalogos(){
			cliente(controller:'cliente',action:'index'){
			catalogo(controller:'cliente',action:'index')
			direccion(controller:'cliente',action:'agregarDireccion')
			}
			proveedor(controller:'proveedor',action:'index')
			empleados(controller:'empleado',action:'index')
			
			perfilEmpleado(controller:'home',action:'enCostruccion')
			productos(controller:'home',action:'enCostruccion')
			herramientaEquipo(controller:'home',action:'enCostruccion')

		}
		 empleado(){
		 		datosPersonales(action:'datosPersonales')
				contacto(action:'agregarContacto')
		 }
		operaciones(){
			cotizaciones(controller:'cotizacion',action:'index')
			venta(controller:'home',action:'enCostruccion')
			cobranza(controller:'home',action:'enCostruccion')
			compra(controller:'home',action:'enCostruccion')
			pagos(controller:'home',action:'enCostruccion')
			nomina(controller:'home',action:'enCostruccion')
		}
		tesoreria(){
			movimientos(controller:'home',action:'enCostruccion')
			cobros(controller:'home',action:'enCostruccion')
			pagos(controller:'home',action:'enCostruccion')
		}
		info(view:'info')
	}
	
}