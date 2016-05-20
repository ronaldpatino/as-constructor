
<%@ page import="com.as.core.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Clientes</title>
	<asset:stylesheet src="datatables/dataTables.css"/>
	<asset:javascript src="datatables/dataTables.js"/> 
	
	</head>
	<body>
<div class="container">
		
		<div class="row">

			<div class="col-md-12">

				<div class="page-header">
				  <h3>Alta de clientes  
				  	<g:if test="${flash.message}">
				  		<small><span class="label label-warning ">${flash.message}</span></small>
				  	</g:if> 
				  </h3>
				</div>
			</div>
		</div><!-- end .row -->
		

		<div class="row ">
			
			<!-- Sidebar -->
			<div class="col-md-2">
				<div class="panel panel-default">
					<div class="panel-heading">Consultas</div>

					<%--<nav:menu class="nav nav-pills nav-stacked" 
						scope="app/catalogos/empleado"/>
				--%> <nav:menu id="nav" custom="true" scope="app/catalogos/cliente">
                           <p:callTag tag="g:link"
                                      attrs="${linkArgs + [class:active ? 'list-group-item  active' : 'list-group-item',id:clienteInstance.id]}">
                             
                              <i class="${item.data.icon ?:'fa fa-bars'}"></i>&nbsp;<nav:title item="${item}"/>


                           </p:callTag>
                       </nav:menu> 
				</div>
			</div>



			<div class="col-md-6">
				
				<g:form class="form-horizontal" action="update" id="${clienteInstance.id}" method="PUT">

					<div class="panel panel-primary">
						<div class="panel-heading">Datos del cliente</div>
					  <div class="panel-body">
					    <g:hasErrors bean="${clienteInstance}">
					    	<div class="alert alert-danger">
					    		<ul class="errors" >
					    			<g:renderErrors bean="${clienteInstance}" as="list" />
					    		</ul>
					    	</div>
					    	
					    </g:hasErrors>
						<f:with bean="${clienteInstance}">
							
							<f:field property="razonSocial" widget-class="form-control"/>
							<f:field property="clave" widget-class="form-control"/>
							<f:field property="apellidoPaterno" widget-class="form-control"/>
							<f:field property="apellidoMaterno" widget-class="form-control"/>
							<f:field property="nombres" widget-class="form-control " />
							<f:field property="rfc" widget-class="form-control"/>
							<f:field property="curp" widget-class="form-control"/>
							<label for="chk1">Persona fisica:</label>
 							<g:checkBox name="fisica" value="${clienteInstance?.fisica}"/><br/>
 							<label for="chk1">Activo:</label>
							<g:checkBox name="activo" value="${clienteInstance?.activo}" /><br/>
							<label for="chk1">Permitir Cheque:</label>
							<g:checkBox name="permitirCheque" value="${clienteInstance?.permitirCheque}" /><br/>


		</f:with>
						
					  </div>
					
					  <div class="panel-footer">
					  	
					  	<div class="form-group">
					  		<div class="buttons col-md-offset-3">
					  			<g:submitButton name="Actualizar" class="btn btn-primary " />
					  			<g:link action="show" class="btn btn-default" id="${clienteInstance.id}"> Cancelar</g:link>
					  		</div>
					  	</div>
					  </div>
			

					</div>

				</g:form>
				
			</div>
		</div> <!-- end .row 2 -->
		
		
	








		
		</div>
	</body>
</html>
