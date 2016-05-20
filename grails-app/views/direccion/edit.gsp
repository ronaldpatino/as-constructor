<%@ page import="com.as.core.Direccion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Direccion</title>
		<asset:stylesheet src="datatables/dataTables.css"/>
		<asset:javascript src="datatables/dataTables.js"/> 
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="alert alert-info">
						<h3>
							<p class="text-center"> Direccion</p>
						</h3>
						<g:if test="${flash.message}">
							<span class="label label-warning">${flash.message}</span>
						</g:if> 
					</div>
				</div>
			</div><!-- end .row Titulo-->

			<div class="row">
				<div class="col-md-6 col-md-offset-3">
							<g:form class="form-horizontal" action="save" >	

								<div class="panel panel-primary">
									<div class="panel-heading">Direccion</div>
								  <div class="panel-body">
								    <g:hasErrors bean="${direccionInstance}">
								    	<div class="alert alert-danger">
								    		<ul class="errors" >
								    			<g:renderErrors bean="${direccionInstance}" as="list" />
								    		</ul>
								    	</div>
								    	
								    </g:hasErrors>
									<f:with bean="${direccionInstance}">
					
													<f:field property="calle" widget-class="form-control"/>
													<f:field property="numeroInterior" widget-class="form-control" input-type="number"/>
													<f:field property="numeroExterior" widget-class="form-control" input-type="number"/>
													<f:field property="colonia" widget-class="form-control" />
													<f:field property="codigoPostal" widget-class="form-control" input-type="number"/>
													<f:field property="municipio" widget-class="form-control" input-type="text"/>
													<f:field property="estado" widget-class="form-control" input-type="text"/>
													<f:field property="pais" widget-class="form-control" input-type="text"/>
												</f:with>
								  </div>
								</div>
							</g:form>
							<div class="row">
				<div class="col-md-6 col-md-offset-4">
					<g:form url="[resource:direccionInstance, action:'update']" method="PUT" >
						<fieldset >
						<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
						</fieldset>
					</g:form>
				</div>
			</div>
				</div>
			</div>
			
			

		</div>

		
			
			
		
	</body>
</html>
