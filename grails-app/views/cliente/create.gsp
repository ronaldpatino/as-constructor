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
				--%>
					<nav:menu class="nav nav-pills nav-stacked"  scope="app/catalogos/empleado" custom="true">
	    				<li class="${active?'active':''}">
	    					
	        					<p:callTag tag="g:link">
	               					<nav:title item="${item}"/>
	        					</p:callTag>
	        			</li>
	    				
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
							
							<f:field property="razonSocial" widget-class="form-control"/>
							<f:field property="clave" widget-class="form-control"/>
							<f:field property="apellidoPaterno" widget-class="form-control"/>
							<f:field property="apellidoMaterno" widget-class="form-control"/>
							<f:field property="nombres" widget-class="form-control " />
							<f:field property="rfc" widget-class="form-control"/>
							<f:field property="curp" widget-class="form-control"/>
							<label for="chk1">Persona fisica:</label>
 							<g:checkBox  id='chk1' name="fisica" value="${false}" /><br/>
 							<label for="chk1">Activo:</label>
							<g:checkBox name="activo" value="${true}" /><br/>
							<label for="chk1">Permitir Cheque:</label>
							<g:checkBox name="permitirCheque" value="${true}" /><br/>
						


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
		</div> <!-- end .row 2 -->








		
		</div>
	</body>
</html>
