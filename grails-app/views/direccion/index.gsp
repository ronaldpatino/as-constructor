
<%@ page import="com.as.core.Direccion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'direccion.label', default: 'Direccion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-direccion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-direccion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="calle" title="${message(code: 'direccion.calle.label', default: 'Calle')}" />
					
						<g:sortableColumn property="numeroInterior" title="${message(code: 'direccion.numeroInterior.label', default: 'Numero Interior')}" />
					
						<g:sortableColumn property="numeroExterior" title="${message(code: 'direccion.numeroExterior.label', default: 'Numero Exterior')}" />
					
						<g:sortableColumn property="colonia" title="${message(code: 'direccion.colonia.label', default: 'Colonia')}" />
					
						<g:sortableColumn property="municipio" title="${message(code: 'direccion.municipio.label', default: 'Municipio')}" />
					
						<g:sortableColumn property="codigoPostal" title="${message(code: 'direccion.codigoPostal.label', default: 'Codigo Postal')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${direccionInstanceList}" status="i" var="direccionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${direccionInstance.id}">${fieldValue(bean: direccionInstance, field: "calle")}</g:link></td>
					
						<td>${fieldValue(bean: direccionInstance, field: "numeroInterior")}</td>
					
						<td>${fieldValue(bean: direccionInstance, field: "numeroExterior")}</td>
					
						<td>${fieldValue(bean: direccionInstance, field: "colonia")}</td>
					
						<td>${fieldValue(bean: direccionInstance, field: "municipio")}</td>
					
						<td>${fieldValue(bean: direccionInstance, field: "codigoPostal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${direccionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
