<%@ page import="com.as.core.Contacto" %>



<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contacto.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${contactoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="contacto.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${contactoInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="contacto.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" value="${contactoInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="contacto.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${contactoInstance.constraints.tipo.inList}" required="" value="${contactoInstance?.tipo}" valueMessagePrefix="contacto.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="contacto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${contactoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'puesto', 'error')} required">
	<label for="puesto">
		<g:message code="contacto.puesto.label" default="Puesto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="puesto" required="" value="${contactoInstance?.puesto}"/>

</div>

