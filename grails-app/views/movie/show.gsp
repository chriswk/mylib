
<%@ page import="com.chriswk.isharelib.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movie">
			
				<g:if test="${movieInstance?.cast}">
				<li class="fieldcontain">
					<span id="cast-label" class="property-label"><g:message code="movie.cast.label" default="Cast" /></span>
					
						<g:each in="${movieInstance.cast}" var="c">
						<span class="property-value" aria-labelledby="cast-label"><g:link controller="movieRole" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.countries}">
				<li class="fieldcontain">
					<span id="countries-label" class="property-label"><g:message code="movie.countries.label" default="Countries" /></span>
					
						<g:each in="${movieInstance.countries}" var="c">
						<span class="property-value" aria-labelledby="countries-label"><g:link controller="country" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.crew}">
				<li class="fieldcontain">
					<span id="crew-label" class="property-label"><g:message code="movie.crew.label" default="Crew" /></span>
					
						<g:each in="${movieInstance.crew}" var="c">
						<span class="property-value" aria-labelledby="crew-label"><g:link controller="job" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="movie.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${movieInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="movie.genres.label" default="Genres" /></span>
					
						<g:each in="${movieInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="genre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.languages}">
				<li class="fieldcontain">
					<span id="languages-label" class="property-label"><g:message code="movie.languages.label" default="Languages" /></span>
					
						<g:each in="${movieInstance.languages}" var="l">
						<span class="property-value" aria-labelledby="languages-label"><g:link controller="language" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="movie.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:formatDate date="${movieInstance?.releaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.summary}">
				<li class="fieldcontain">
					<span id="summary-label" class="property-label"><g:message code="movie.summary.label" default="Summary" /></span>
					
						<span class="property-value" aria-labelledby="summary-label"><g:fieldValue bean="${movieInstance}" field="summary"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.tagline}">
				<li class="fieldcontain">
					<span id="tagline-label" class="property-label"><g:message code="movie.tagline.label" default="Tagline" /></span>
					
						<span class="property-value" aria-labelledby="tagline-label"><g:fieldValue bean="${movieInstance}" field="tagline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="movie.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${movieInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.tmdbId}">
				<li class="fieldcontain">
					<span id="tmdbId-label" class="property-label"><g:message code="movie.tmdbId.label" default="Tmdb Id" /></span>
					
						<span class="property-value" aria-labelledby="tmdbId-label"><g:fieldValue bean="${movieInstance}" field="tmdbId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${movieInstance?.id}" />
					<g:link class="edit" action="edit" id="${movieInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
