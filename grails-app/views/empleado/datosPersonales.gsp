<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Datos personales empleado </title>
	<asset:stylesheet src="datatables/dataTables.css"/>
	<asset:javascript src="datatables/dataTables.js"/> 
	<r:require module="forms"/>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<div class="page-header">
			  <h3>Datos personales: ${empleadoInstance.nombre} 
			  	<g:if test="${flash.message}">
			  		<small><span class="label label-warning ">${flash.message}</span></small>
			  	</g:if> 
			  </h3>
			</div>
		</div>
	</div><!-- end .row -->
	<div class="row">
		<!-- Sidebar -->
			<div class="col-md-2">
				<div class="panel panel-default">
					<div class="panel-heading">Consultas</div>
					<ul class="nav nav-pills nav-stacked">
					  <li role="presentation"><g:link action="show" id="${empleadoInstance.id}">Cliente</g:link></li>
 					</ul>
				</div>
			</div>

				<g:hasErrors bean="${empleadoInstance?.datosPersonales}">
		<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<ul>
				<g:eachError var="err" bean="${empleadoInstance.datosPersonales}">
					<li><g:message error="${err}"/></li>
				</g:eachError>
			</ul>
		</div>
	</g:hasErrors>
	
	<form  class="form-horizontal" controller="empleado"  action="update" id="${empleadoInstance.id}" method="PUT" >
		<g:hiddenField name="id" value="${empleadoInstance.id}"/>
		<g:hiddenField name="version" value="${empleadoInstance?.version}" />
		<g:hiddenField name="view" value="datosPersonales" />
		
		<div class="col-md-5">
		
			<fieldset >
				<f:with bean="empleadoInstance">
					<f:field property="datosPersonales.lugarDeNacimiento" widget-class="form-control" />	
					<f:field property="datosPersonales.telefono1" widget-class="form-control" />
					<f:field property="datosPersonales.telefono2" widget-class="form-control" />
					<f:field property="datosPersonales.email" widget-class="form-control" />
					<f:field property="datosPersonales.tipoDeSangre" widget-class="form-control" />
					<f:field property="datosPersonales.estadoCivil" widget-class="form-control" />
					<f:field property="datosPersonales.conyuge" label="Conyuge" widget-class="form-control" />
					
					<f:field property="datosPersonales.nombreDelPader" widget-class="form-control" label="Nombre del padre" />
					
					<f:field property="datosPersonales.nombreDeLaMadre" widget-class="form-control" />
						
				</f:with>
			</fieldset>
		
		</div>
		<div class="col-md-5">
		
			<fieldset >
				<f:with bean="empleadoInstance">
					<f:field property="datosPersonales.direccion.calle" widget-class="form-control" />	
					<f:field property="datosPersonales.direccion.numeroExterior" widget-class="form-control" />
					<f:field property="datosPersonales.direccion.numeroInterior" widget-class="form-control" />
					<f:field property="datosPersonales.direccion.colonia" widget-class="form-control" />
					<f:field property="datosPersonales.direccion.municipio" widget-class="form-control" />
					<f:field property="datosPersonales.direccion.estado" widget-class="form-control" />
					<f:field property="datosPersonales.direccion.codigoPostal" widget-class="form-control" />
					<f:field property="datosPersonales.direccion.pais" widget-class="form-control" />
				</f:with>
			</fieldset>
		
		</div>
	
	
	<div class="form-group">
    	<div class="col-sm-offset-8 col-sm-12">
      		<g:actionSubmit class="btn btn-primary"  value="Actualizar" controller="empleado" action="update" id="${empleadoInstance.id}"/>
      		<g:link class="btn btn-default" controller="empleado" action="show" id="${empleadoInstance.id}" >Cancelar</g:link>
    	</div>
	</div>
	</form>
	</div>
</div>
</body>
</html>