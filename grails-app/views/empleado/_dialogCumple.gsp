<%@page expressionCodec="none"%>
<%@ page import="com.luxsoft.sw4.rh.EjercicioMesReportCommand" %>
<div class="modal fade" id="cumpleaniosForm" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Cumpleaños</h4>
			</div>
			<div class="modal-body">
			  <g:form controller='empleado' action="cumpleanios" class="form-horizontal">
				<fieldset>
						<legend> Parámetros</legend>
						<f:with bean="${new EjercicioMesReportCommand()}">
							<f:field property="ejercicio"   input-class="form-control"/>
							<f:field property="mes"  input-class="form-control"/>
						</f:with>
				</fieldset>
				<div class="form-group">
				    	<div class="col-sm-offset-2 col-sm-3">
				      		<button type="submit" class="btn btn-default">
				      			<span class="glyphicon glyphicon-cog"></span> Ejecutar
				      		</button>
				    	</div>
				  </div>
				</g:form>
				  
         		
			</div>
			
		</div>
		
	</div>
	
</div>
