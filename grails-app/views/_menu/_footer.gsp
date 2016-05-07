
<nav class="navbar navbar-default navbar-fixed-bottom navbar-inverse" role="navigation">
	<div class="container">
		
	
			
			
			
			<p class="navbar-text navbar-left"> 
			
			</p>
			<p class="navbar-text navbar-right">Usuario: 
				<a href="#" class="navbar-link">
					<sec:loggedInUserInfo field="username"/>
				</a>
			</p>
		
			<p class="navbar-text navbar-left"> Ingreso al sistema</p>
		
	</div>
</nav>

<div class="modal fade" id="empresaDialog" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			
		
				<g:form class="form-horizontal" action="cambiarEmpresa" controller="empresa" >
					<div class="modal-body">
					
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
						<g:submitButton class="btn btn-primary" name="aceptar"
								value="Aceptar" />
					</div>

				</g:form>
			
			

		</div>
		<!-- moda-content -->
	</div>
	<!-- modal-di -->

</div>