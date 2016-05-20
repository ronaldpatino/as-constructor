<%@ page import="com.as.core.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="empleado.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" maxlength="150" value="${empleadoInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="empleado.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" maxlength="150" value="${empleadoInstance?.apellidoMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="empleado.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nombres" cols="40" rows="5" maxlength="300" required="" value="${empleadoInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'clave', 'error')} ">
	<label for="clave">
		<g:message code="empleado.clave.label" default="Clave" />
		
	</label>
	<g:textField name="clave" value="${empleadoInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'curp', 'error')} required">
	<label for="curp">
		<g:message code="empleado.curp.label" default="Curp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="curp" maxlength="25" required="" value="${empleadoInstance?.curp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="empleado.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="13" required="" value="${empleadoInstance?.rfc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="empleado.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${empleadoInstance.constraints.sexo.inList}" required="" value="${empleadoInstance?.sexo}" valueMessagePrefix="empleado.sexo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="empleado.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${empleadoInstance.constraints.status.inList}" required="" value="${empleadoInstance?.status}" valueMessagePrefix="empleado.status"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'perfil', 'error')} ">
	<label for="perfil">
		<g:message code="empleado.perfil.label" default="Perfil" />
		
	</label>
	<g:select id="perfil" name="perfil.id" from="${com.as.core.PerfilEmpleado.list()}" optionKey="id" value="${empleadoInstance?.perfil?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'datosPersonales', 'error')} ">
	<label for="datosPersonales">
		<g:message code="empleado.datosPersonales.label" default="Datos Personales" />
		
	</label>
	<g:select id="datosPersonales" name="datosPersonales.id" from="${com.as.core.DatosPersonales.list()}" optionKey="id" value="${empleadoInstance?.datosPersonales?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'contacto', 'error')} ">
	<label for="contacto">
		<g:message code="empleado.contacto.label" default="Contacto" />
		
	</label>
	<g:select id="contacto" name="contacto.id" from="${com.as.core.ContactoEmpleado.list()}" optionKey="id" value="${empleadoInstance?.contacto?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'baja', 'error')} ">
	<label for="baja">
		<g:message code="empleado.baja.label" default="Baja" />
		
	</label>
	<g:select id="baja" name="baja.id" from="${com.as.core.BajaEmpleado.list()}" optionKey="id" value="${empleadoInstance?.baja?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="empleado.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${empleadoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'alta', 'error')} required">
	<label for="alta">
		<g:message code="empleado.alta.label" default="Alta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="alta" precision="day"  value="${empleadoInstance?.alta}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaDeNacimiento', 'error')} required">
	<label for="fechaDeNacimiento">
		<g:message code="empleado.fechaDeNacimiento.label" default="Fecha De Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaDeNacimiento" precision="day"  value="${empleadoInstance?.fechaDeNacimiento}"  />

</div>

