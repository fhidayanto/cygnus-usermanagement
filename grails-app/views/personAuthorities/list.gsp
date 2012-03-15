
<%@ page import="com.cygnus.sys.umgt.PersonAuthorities" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personAuthorities.label', default: 'PersonAuthorities')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personAuthorities" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personAuthorities" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="personAuthorities.authorities.label" default="Authorities" /></th>
					
						<th><g:message code="personAuthorities.person.label" default="Person" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personAuthoritiesInstanceList}" status="i" var="personAuthoritiesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personAuthoritiesInstance.id}">${fieldValue(bean: personAuthoritiesInstance, field: "authorities")}</g:link></td>
					
						<td>${fieldValue(bean: personAuthoritiesInstance, field: "person")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personAuthoritiesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
