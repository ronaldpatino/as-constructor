<%@ page import="com.as.core.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="cliente.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${clienteInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="cliente.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${clienteInstance?.apellidoMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombres', 'error')} ">
	<label for="nombres">
		<g:message code="cliente.nombres.label" default="Nombres" />
		
	</label>
	<g:textField name="nombres" value="${clienteInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="cliente.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="13" required="" value="${clienteInstance?.rfc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'curp', 'error')} ">
	<label for="curp">
		<g:message code="cliente.curp.label" default="Curp" />
		
	</label>
	<g:textField name="curp" maxlength="18" value="${clienteInstance?.curp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="cliente.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${clienteInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cedula', 'error')} ">
	<label for="cedula">
		<g:message code="cliente.cedula.label" default="Cedula" />
		
	</label>
	<g:checkBox name="cedula" value="${clienteInstance?.cedula}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'chequesDevueltos', 'error')} required">
	<label for="chequesDevueltos">
		<g:message code="cliente.chequesDevueltos.label" default="Cheques Devueltos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="chequesDevueltos" value="${fieldValue(bean: clienteInstance, field: 'chequesDevueltos')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="cliente.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" required="" value="${clienteInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'contactos', 'error')} ">
	<label for="contactos">
		<g:message code="cliente.contactos.label" default="Contactos" />
		
	</label>
	<g:select name="contactos" from="${com.as.core.Contacto.list()}" multiple="multiple" optionKey="id" size="5" value="${clienteInstance?.contactos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'direcciones', 'error')} ">
	<label for="direcciones">
		<g:message code="cliente.direcciones.label" default="Direcciones" />
		
	</label>
	<g:select name="direcciones" from="${com.as.core.Direccion.list()}" multiple="multiple" optionKey="id" size="5" value="${clienteInstance?.direcciones*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'fisica', 'error')} ">
	<label for="fisica">
		<g:message code="cliente.fisica.label" default="Fisica" />
		
	</label>
	<g:checkBox name="fisica" value="${clienteInstance?.fisica}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'grupoRfc', 'error')} required">
	<label for="grupoRfc">
		<g:message code="cliente.grupoRfc.label" default="Grupo Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="grupoRfc" type="number" value="${clienteInstance.grupoRfc}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'juridico', 'error')} ">
	<label for="juridico">
		<g:message code="cliente.juridico.label" default="Juridico" />
		
	</label>
	<g:checkBox name="juridico" value="${clienteInstance?.juridico}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'permitirCheque', 'error')} ">
	<label for="permitirCheque">
		<g:message code="cliente.permitirCheque.label" default="Permitir Cheque" />
		
	</label>
	<g:checkBox name="permitirCheque" value="${clienteInstance?.permitirCheque}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'razonSocial', 'error')} required">
	<label for="razonSocial">
		<g:message code="cliente.razonSocial.label" default="Razon Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="razonSocial" required="" value="${clienteInstance?.razonSocial}"/>

</div>

