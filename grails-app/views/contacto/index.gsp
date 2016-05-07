
<%@ page import="com.as.core.Contacto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contacto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contacto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'contacto.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'contacto.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="celular" title="${message(code: 'contacto.celular.label', default: 'Celular')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'contacto.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'contacto.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'contacto.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contactoInstanceList}" status="i" var="contactoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contactoInstance.id}">${fieldValue(bean: contactoInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: contactoInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: contactoInstance, field: "celular")}</td>
					
						<td>${fieldValue(bean: contactoInstance, field: "tipo")}</td>
					
						<td><g:formatDate date="${contactoInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${contactoInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contactoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
