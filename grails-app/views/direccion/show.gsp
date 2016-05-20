
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
					<ul class="nav nav-pills">
					  <li role="presentation" ><g:link class="list" controller="cliente" action="index"><g:message code="Catalogo"/></g:link></li>
					</ul>
				</div>
									
			</div>
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
										<f:display property="calle" widget-class="form-control"/>
										<f:display property="colonia" widget-class="form-control"/>
										<f:display property="numeroInterior" widget-class="form-control"/>
									</f:with>
								  </div>
								</div>
							</g:form>
				</div>
			</div>
			<div class="row">
			<g:form url="[resource:direccionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons col-md-offset-4 col-md-4">
				 	<button type="button" class="btn btn-default">
				 		<g:link class="edit" action="edit" resource="${direccionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>	
				 	</button>
					
					
				</fieldset>
			</g:form>
		</div>



		</div>

	</body>
</html>
