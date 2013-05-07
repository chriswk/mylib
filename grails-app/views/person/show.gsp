
<%@ page import="com.chriswk.isharelib.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.biography}">
				<li class="fieldcontain">
					<span id="biography-label" class="property-label"><g:message code="person.biography.label" default="Biography" /></span>
					
						<span class="property-value" aria-labelledby="biography-label"><g:fieldValue bean="${personInstance}" field="biography"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.birthPlace}">
				<li class="fieldcontain">
					<span id="birthPlace-label" class="property-label"><g:message code="person.birthPlace.label" default="Birth Place" /></span>
					
						<span class="property-value" aria-labelledby="birthPlace-label"><g:fieldValue bean="${personInstance}" field="birthPlace"/></span>
					
				</li>
				</g:if>

				<g:if test="${personInstance?.born}">
				<li class="fieldcontain">
					<span id="born-label" class="property-label"><g:message code="person.born.label" default="Born" /></span>
					
						<span class="property-value" aria-labelledby="born-label"><g:link controller="country" action="show" id="${personInstance?.born?.id}">${personInstance?.born?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.imageUrl}">
				<li class="fieldcontain">
					<span id="imageUrl-label" class="property-label"><g:message code="person.imageUrl.label" default="Image Url" /></span>
					
						<span class="property-value" aria-labelledby="imageUrl-label"><g:fieldValue bean="${personInstance}" field="imageUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.imdbId}">
				<li class="fieldcontain">
					<span id="imdbId-label" class="property-label"><g:message code="person.imdbId.label" default="Imdb Id" /></span>
					
						<span class="property-value" aria-labelledby="imdbId-label"><g:fieldValue bean="${personInstance}" field="imdbId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.jobs}">
				<li class="fieldcontain">
					<span id="jobs-label" class="property-label"><g:message code="person.jobs.label" default="Jobs" /></span>
					
						<g:each in="${personInstance.jobs}" var="j">
						<span class="property-value" aria-labelledby="jobs-label"><g:link controller="job" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.languages}">
				<li class="fieldcontain">
					<span id="languages-label" class="property-label"><g:message code="person.languages.label" default="Languages" /></span>
					
						<g:each in="${personInstance.languages}" var="l">
						<span class="property-value" aria-labelledby="languages-label"><g:link controller="language" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="person.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${personInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.roles}">
				<li class="fieldcontain">
					<span id="roles-label" class="property-label"><g:message code="person.roles.label" default="Roles" /></span>
					
						<g:each in="${personInstance.roles}" var="r">
						<span class="property-value" aria-labelledby="roles-label"><g:link controller="movieRole" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.tmdbId}">
				<li class="fieldcontain">
					<span id="tmdbId-label" class="property-label"><g:message code="person.tmdbId.label" default="Tmdb Id" /></span>
					
						<span class="property-value" aria-labelledby="tmdbId-label"><g:fieldValue bean="${personInstance}" field="tmdbId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personInstance?.id}" />
					<g:link class="edit" action="edit" id="${personInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
