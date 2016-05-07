
<%@ page import="com.as.core.Direccion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'direccion.label', default: 'Direccion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-direccion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-direccion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list direccion">
			
				<g:if test="${direccionInstance?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="direccion.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${direccionInstance}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.numeroInterior}">
				<li class="fieldcontain">
					<span id="numeroInterior-label" class="property-label"><g:message code="direccion.numeroInterior.label" default="Numero Interior" /></span>
					
						<span class="property-value" aria-labelledby="numeroInterior-label"><g:fieldValue bean="${direccionInstance}" field="numeroInterior"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.numeroExterior}">
				<li class="fieldcontain">
					<span id="numeroExterior-label" class="property-label"><g:message code="direccion.numeroExterior.label" default="Numero Exterior" /></span>
					
						<span class="property-value" aria-labelledby="numeroExterior-label"><g:fieldValue bean="${direccionInstance}" field="numeroExterior"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.colonia}">
				<li class="fieldcontain">
					<span id="colonia-label" class="property-label"><g:message code="direccion.colonia.label" default="Colonia" /></span>
					
						<span class="property-value" aria-labelledby="colonia-label"><g:fieldValue bean="${direccionInstance}" field="colonia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.municipio}">
				<li class="fieldcontain">
					<span id="municipio-label" class="property-label"><g:message code="direccion.municipio.label" default="Municipio" /></span>
					
						<span class="property-value" aria-labelledby="municipio-label"><g:fieldValue bean="${direccionInstance}" field="municipio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.codigoPostal}">
				<li class="fieldcontain">
					<span id="codigoPostal-label" class="property-label"><g:message code="direccion.codigoPostal.label" default="Codigo Postal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostal-label"><g:fieldValue bean="${direccionInstance}" field="codigoPostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="direccion.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${direccionInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${direccionInstance?.pais}">
				<li class="fieldcontain">
					<span id="pais-label" class="property-label"><g:message code="direccion.pais.label" default="Pais" /></span>
					
						<span class="property-value" aria-labelledby="pais-label"><g:fieldValue bean="${direccionInstance}" field="pais"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:direccionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${direccionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
