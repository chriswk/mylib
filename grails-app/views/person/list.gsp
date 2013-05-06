
<%@ page import="com.chriswk.isharelib.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-person" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="biography" title="${message(code: 'person.biography.label', default: 'Biography')}" />
					
						<g:sortableColumn property="birthPlace" title="${message(code: 'person.birthPlace.label', default: 'Birth Place')}" />
					
						<g:sortableColumn property="birthday" title="${message(code: 'person.birthday.label', default: 'Birthday')}" />
					
						<th><g:message code="person.born.label" default="Born" /></th>
					
						<g:sortableColumn property="imageUrl" title="${message(code: 'person.imageUrl.label', default: 'Image Url')}" />
					
						<g:sortableColumn property="imdbId" title="${message(code: 'person.imdbId.label', default: 'Imdb Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personInstanceList}" status="i" var="personInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "biography")}</g:link></td>
					
						<td>${fieldValue(bean: personInstance, field: "birthPlace")}</td>
					
						<td><g:formatDate date="${personInstance.birthday}" /></td>
					
						<td>${fieldValue(bean: personInstance, field: "born")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "imageUrl")}</td>
					
						<td>${fieldValue(bean: personInstance, field: "imdbId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
