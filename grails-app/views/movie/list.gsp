
<%@ page import="com.chriswk.isharelib.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-movie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'movie.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="releaseDate" title="${message(code: 'movie.releaseDate.label', default: 'Release Date')}" />
					
						<g:sortableColumn property="summary" title="${message(code: 'movie.summary.label', default: 'Summary')}" />
					
						<g:sortableColumn property="tagline" title="${message(code: 'movie.tagline.label', default: 'Tagline')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'movie.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="tmdbId" title="${message(code: 'movie.tmdbId.label', default: 'Tmdb Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${movieInstanceList}" status="i" var="movieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${movieInstance.id}">${fieldValue(bean: movieInstance, field: "description")}</g:link></td>
					
						<td><g:formatDate date="${movieInstance.releaseDate}" /></td>
					
						<td>${fieldValue(bean: movieInstance, field: "summary")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "tagline")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "title")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "tmdbId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${movieInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
