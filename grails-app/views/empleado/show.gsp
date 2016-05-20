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
							<f:display property="apellidoPaterno" widget-class="form-control"/>
							<f:display property="apellidoMaterno" widget-class="form-control"/>
							<f:display property="nombres" widget-class="form-control"/>
							<f:display property="nombre" widget-class="form-control"/>
							<f:display property="clave" widget-class="form-control"/>
							<f:display property="curp" widget-class="form-control"/>
							<f:display property="rfc" widget-class="form-control"/>
							<f:display property="alta" input-class="form-control" />	
							<f:display property="sexo" widget-class="form-control"/>
							<f:display property="status" widget-class="form-control"/>
							<f:display property="fechaDeNacimiento" input-class="form-control" />	
							<f:display property="activo" widget-class="form-control"/>

		</f:with>					
					  </div>
					  	</div>
					  </div>

					   

					</div>

				</g:form>
				<div class="panel-footer">
							<g:form url="[resource:empleadoInstance, action:'delete']" method="DELETE">
								<fieldset class="buttons col-md-offset-6 col-md-4">
									<g:link class="edit" action="edit" resource="${empleadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>	
									<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" id="${empleadoInstance.id}"/>
								</fieldset>
							</g:form>
					  </div>
			</div>
		</div>


		
</div>

<g:javascript>
$(document).ready(function()
{
$("#datePicker").datepicker({dateFormat: 'mm/dd/yy'});
})
</g:javascript>

</body>
</html>