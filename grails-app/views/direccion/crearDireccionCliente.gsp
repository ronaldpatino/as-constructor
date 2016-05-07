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
			<div class='container'>
				<div class='row'>

					<div class="col-md-12">

						<div class="page-header">
						  <h3> Agregar direccion para ${clienteInstance.razonSocial}
						  	<g:if test="${flash.message}">
						  		<small><span class="label label-warning ">${flash.message}</span></small>
						  	</g:if> 
						  </h3>
						</div>
					</div>
				</div><!-- End row 1-->


				<div class='row col-sm-offset-2 col-sm-8'>
					<div>
						<g:if test="${direccionInstance}">
							<g:form  class="form-horizontal " action="salvar" id="${clienteInstance.id}">
									<div class="panel panel-primary">
										<div class="panel-heading">
											Direccion
										</div>
											<div class="panel-body">
												<f:with bean="${direccionInstance}">
													<g:hiddenField name="cliente.id" value="${clienteInstance.id}"/>
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

										  	<div class="panel-footer">
												<div class="form-group">
							    					<div class="buttons  col-sm-offset-4 col-sm-12">
												  	<g:submitButton name="Salvar" class="btn btn-primary " />
												 	 <g:link action="agregarDireccionCliente" class="btn btn-default" id="${clienteInstance.id}"> Cancelar</g:link>
												 	 </div>
												</div>
											</div>
										</div>	
							</g:form>
						</g:if>
					</div>
				</div>
			</div>
	</body>
</html>
