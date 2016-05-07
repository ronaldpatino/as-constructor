
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
				
				<g:form class="form-horizontal" action="save" >	

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
							
							<f:display property="razonSocial" widget-class="form-control"/>
							<f:display property="clave" widget-class="form-control"/>
							<f:display property="apellidoPaterno" widget-class="form-control"/>
							<f:display property="apellidoMaterno" widget-class="form-control"/>
							<f:display property="nombres" widget-class="form-control " />
							<f:display property="rfc" widget-class="form-control"/>
							<f:display property="curp" widget-class="form-control"/>
							<label for="chk1">Persona fisica:</label>
 							<g:checkBox name="fisica" value="${clienteInstance?.fisica}" disabled="disabled"/><br/>
 							<label for="chk1">Activo:</label>
							<g:checkBox name="activo" value="${clienteInstance?.activo}" disabled="disabled"/><br/>
							<label for="chk1">Permitir Cheque:</label>
							<g:checkBox name="permitirCheque" value="${clienteInstance?.permitirCheque}" disabled="disabled"/><br/>


		</f:with>
						
					  </div>
					
					 
			

					</div>

				</g:form>
				
			</div>
		</div> <!-- end .row 2 -->
		
		
		<div class="row">
			<g:form url="[resource:clienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons col-md-offset-4 col-md-4">
					<g:link class="edit" action="edit" resource="${clienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>	
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>








		
		</div>
	</body>
</html>
