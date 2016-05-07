
<%@ page import="com.as.core.Direccion" %>
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
				<div class="alert alert-info">
					<h3>
						<p class="text-center"> Direcciones ${clienteInstance.razonSocial}</p>
					</h3>
					<g:if test="${flash.message}">
						<span class="label label-warning">${flash.message}</span>
					</g:if> 
				</div>
		</div>

	</div><!-- end .row 1 -->

	<div class="row toolbar-panel">
		
		<div class="btn-group">
		        <button type="button" name="operaciones"
		                class="btn btn-default dropdown-toggle" data-toggle="dropdown"
		                role="menu">
		                Operaciones <span class="caret"></span>
		        </button>
		        <ul class="dropdown-menu">
		            <li>
		                <g:link action="crearDireccionCliente" id="${clienteInstance.id}"><i class="fa fa-plus"></i> Nuevo</g:link>
		            </li>
		        </ul>
		    </div>
	</div>  <!-- end .row2 -->

	<div class="row">
			<div class="col-md-12">
				<table id="grid" class="table table-striped table-bordered table-condensed">
				

					<thead>
						<tr>
							<th>Cliente</th>
							<th>Calle</th>
							<th>Colonia</th>
							<th>Modificado</th>
						</tr>
					</thead>
					<tbody>
						<g:each in="${direccionInstanceList}" var="row">
							<tr id="${row.id}">
							
								<td >
									<g:link  action="show" id="${row.id}">
										${fieldValue(bean:row,field:"calle")}
									</g:link>
								</td>
								<td>
									<g:link  action="show" id="${row.id}">
										${fieldValue(bean:row,field:"calle")}
									</g:link>
								</td>
								
							</tr>
						</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${clienteInstanceCount ?: 0}"/>
				</div>
			</div>
	</div> <!-- end . row3-->
		
	</body>
</html>
