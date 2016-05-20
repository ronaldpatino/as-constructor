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

			<div class="col-md-2">
				<div class="panel panel-default">
					<div class="panel-heading">Consultas</div>

					<%--<nav:menu class="nav nav-pills nav-stacked" 
						scope="app/catalogos/empleado"/>
				--%>
					<nav:menu class="nav nav-pills nav-stacked"  scope="app/catalogos/empleados" custom="true">
	    				<li class="${active?'active':''}">
	    					
	        					<p:callTag tag="g:link">
	               					<nav:title item="${item}"/>
	        					</p:callTag>
	        			</li>
	    				
					</nav:menu>
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

<content tag="actions">
	
</content>

<content tag="content">
	<form class="form-horizontal" method="post">
		
		<div class="col-md-6">
			<fieldset >
				<f:with bean="${empleadoInstance}">
					<f:field property="apellidoPaterno" input-class="form-control" />	
					<f:field property="apellidoMaterno" input-class="form-control" />	
					<f:field property="nombres" input-class="form-control" />	
					<f:field property="fechaDeNacimiento" input-class="form-control" label="F.Nacimiento"/>	
					<f:field property="sexo" input-class="form-control" />	
				</f:with>
			</fieldset>
		
		</div>
		
		<div class="col-md-6">
		
			<fieldset >
				<f:with bean="${empleadoInstance}">
						
					<f:field property="curp" input-class="form-control" />	
					<f:field property="rfc" input-class="form-control" />	
					<f:field property="clave" input-class="form-control" />	
					<f:field property="alta" input-class="form-control" />	
					<f:field property="activo" input-class="form-control" />
				</f:with>
			</fieldset>
			
			
			
			
			
		</div>
	
	
	<div class="form-group">
    	<div class="col-sm-offset-8 col-sm-12">
      		<g:actionSubmit class="btn btn-primary"  value="Salvar" action="save"/>
      		<g:link class="btn btn-default" action="generales" id="${empleadoInstance.id}" >Cancelar</g:link>
    	</div>
	</div>
	

	

	</form>
</content>

</body>
</html>