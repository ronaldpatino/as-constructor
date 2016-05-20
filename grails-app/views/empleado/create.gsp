<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Empleados</title>
	<asset:stylesheet src="datatables/dataTables.css"/>
	<asset:javascript src="datatables/dataTables.js"/> 
</head>
<body>

<div class="container">
		<div class="row">

			<div class="col-md-12">

				<div class="page-header">
				  <h3>Alta de empleados
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
					  <li role="presentation"><g:link action="datosPersonales" id="${empleadoInstance.id}">Datos Personales</g:link></li>
					 <li role="presentation"><g:link action="datosPersonales" id="${empleadoInstance.id}">Contacto</g:link></li>
					</ul>
				</div>
			</div>


			<div class="col-md-6 col-md-offset-3">
				
				<g:form class="form-horizontal" action="save" >	

					<div class="panel panel-primary">
						<div class="panel-heading">Datos del empleado</div>
					  <div class="panel-body">
					    <g:hasErrors bean="${empleadoInstance}">
					    	<div class="alert alert-danger">
					    		<ul class="errors" >
					    			<g:renderErrors bean="${empleadoInstance}" as="list" />
					    		</ul>
					    	</div>
					    

	
					    </g:hasErrors>
						<f:with bean="${empleadoInstance}">
							<f:field property="apellidoPaterno" widget-class="form-control"/>
							<f:field property="apellidoMaterno" widget-class="form-control"/>
							<f:field property="nombres" widget-class="form-control"/>
							<f:field property="nombre" widget-class="form-control"/>
							<f:field property="clave" widget-class="form-control"/>
							<f:field property="curp" widget-class="form-control"/>
							<f:field property="rfc" widget-class="form-control"/>
							<f:field property="alta" input-class="form-control" />	
							<f:field property="sexo" widget-class="form-control"/>
							<f:field property="status" widget-class="form-control"/>
							<f:field property="fechaDeNacimiento" input-class="form-control" />	
							<f:field property="activo" widget-class="form-control"/>
							


		</f:with>
						
					  </div>


					
					 
					  <div class="panel-footer">
					  		<div class="form-group">
					  		<div class="buttons  col-sm-offset-4 col-sm-12">
					  			<g:submitButton name="Salvar" class="btn btn-primary " />
					  			<g:link action="index" class="btn btn-default"> Cancelar</g:link>
					  		</div>



					  	</div>
					  </div>

					</div>

				</g:form>
				
			</div>
		</div>

		
</div>




</body>
</html>