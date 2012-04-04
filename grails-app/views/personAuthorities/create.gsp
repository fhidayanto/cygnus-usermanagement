<%@ page import="com.cygnus.sys.umgt.PersonAuthorities" %>
<!doctype html>
<html>
<!-- Generated by Cygnus-templateEngine -->
	<head>
		<meta name="layout" content="cygnus-forms">
		<g:set var="entityName" value="${message(code: 'personAuthorities.label', default: 'PersonAuthorities')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-personAuthorities" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-personAuthorities" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${personAuthoritiesInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${personAuthoritiesInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:formRemote name="cygnuspersonAuthoritiesCreateForm" update="pageContent" url="[controller:'personAuthorities', action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:formRemote>
		</div>
	</body>
</html>
