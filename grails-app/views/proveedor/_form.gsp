<%@ page import="com.as.core.Proveedor" %>



<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="proveedor.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="13" required="" value="${proveedorInstance?.rfc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="proveedor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${proveedorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="proveedor.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" required="" value="${proveedorInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="proveedor.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${proveedorInstance.constraints.tipo.inList}" required="" value="${proveedorInstance?.tipo}" valueMessagePrefix="proveedor.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="proveedor.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${proveedorInstance?.activo}" />

</div>
<fieldset class="embedded"><legend><g:message code="proveedor.contacto.label" default="Contacto" /></legend>
<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.celular', 'error')} ">
	<label for="contacto.celular">
		<g:message code="proveedor.contacto.celular.label" default="Celular" />
		
	</label>
	<g:textField name="celular" value="${contactoInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.dateCreated', 'error')} ">
	<label for="contacto.dateCreated">
		<g:message code="proveedor.contacto.dateCreated.label" default="Date Created" />
		
	</label>
	<g:datePicker name="dateCreated" precision="day"  value="${contactoInstance?.dateCreated}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.email', 'error')} required">
	<label for="contacto.email">
		<g:message code="proveedor.contacto.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${contactoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.id', 'error')} required">
	<label for="contacto.id">
		<g:message code="proveedor.contacto.id.label" default="Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="id" type="number" value="${contactoInstance.id}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.lastUpdated', 'error')} ">
	<label for="contacto.lastUpdated">
		<g:message code="proveedor.contacto.lastUpdated.label" default="Last Updated" />
		
	</label>
	<g:datePicker name="lastUpdated" precision="day"  value="${contactoInstance?.lastUpdated}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.nombre', 'error')} required">
	<label for="contacto.nombre">
		<g:message code="proveedor.contacto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${contactoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.puesto', 'error')} required">
	<label for="contacto.puesto">
		<g:message code="proveedor.contacto.puesto.label" default="Puesto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="puesto" required="" value="${contactoInstance?.puesto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.telefono', 'error')} ">
	<label for="contacto.telefono">
		<g:message code="proveedor.contacto.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${contactoInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.tipo', 'error')} required">
	<label for="contacto.tipo">
		<g:message code="proveedor.contacto.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${contactoInstance.constraints.tipo.inList}" required="" value="${contactoInstance?.tipo}" valueMessagePrefix="contacto.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'contacto.version', 'error')} required">
	<label for="contacto.version">
		<g:message code="proveedor.contacto.version.label" default="Version" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="version" type="number" value="${contactoInstance.version}" required=""/>

</div>
</fieldset><fieldset class="embedded"><legend><g:message code="proveedor.direccion.label" default="Direccion" /></legend>
<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion.calle', 'error')} ">
	<label for="direccion.calle">
		<g:message code="proveedor.direccion.calle.label" default="Calle" />
		
	</label>
	<g:textField name="calle" maxlength="200" value="${direccionProvInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion.codigoPostal', 'error')} ">
	<label for="direccion.codigoPostal">
		<g:message code="proveedor.direccion.codigoPostal.label" default="Codigo Postal" />
		
	</label>
	<g:textField name="codigoPostal" value="${direccionProvInstance?.codigoPostal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion.colonia', 'error')} ">
	<label for="direccion.colonia">
		<g:message code="proveedor.direccion.colonia.label" default="Colonia" />
		
	</label>
	<g:textField name="colonia" value="${direccionProvInstance?.colonia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion.estado', 'error')} ">
	<label for="direccion.estado">
		<g:message code="proveedor.direccion.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" value="${direccionProvInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion.municipio', 'error')} ">
	<label for="direccion.municipio">
		<g:message code="proveedor.direccion.municipio.label" default="Municipio" />
		
	</label>
	<g:textField name="municipio" value="${direccionProvInstance?.municipio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion.numeroExterior', 'error')} ">
	<label for="direccion.numeroExterior">
		<g:message code="proveedor.direccion.numeroExterior.label" default="Numero Exterior" />
		
	</label>
	<g:textField name="numeroExterior" maxlength="50" value="${direccionProvInstance?.numeroExterior}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion.numeroInterior', 'error')} ">
	<label for="direccion.numeroInterior">
		<g:message code="proveedor.direccion.numeroInterior.label" default="Numero Interior" />
		
	</label>
	<g:textField name="numeroInterior" maxlength="50" value="${direccionProvInstance?.numeroInterior}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'direccion.pais', 'error')} ">
	<label for="direccion.pais">
		<g:message code="proveedor.direccion.pais.label" default="Pais" />
		
	</label>
	<g:textField name="pais" maxlength="100" value="${direccionProvInstance?.pais}"/>

</div>
</fieldset>
<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'lineaDeCredito', 'error')} required">
	<label for="lineaDeCredito">
		<g:message code="proveedor.lineaDeCredito.label" default="Linea De Credito" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="lineaDeCredito" value="${fieldValue(bean: proveedorInstance, field: 'lineaDeCredito')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'plazo', 'error')} required">
	<label for="plazo">
		<g:message code="proveedor.plazo.label" default="Plazo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="plazo" type="number" value="${proveedorInstance.plazo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: proveedorInstance, field: 'vtoRevision', 'error')} ">
	<label for="vtoRevision">
		<g:message code="proveedor.vtoRevision.label" default="Vto Revision" />
		
	</label>
	<g:checkBox name="vtoRevision" value="${proveedorInstance?.vtoRevision}" />

</div>

