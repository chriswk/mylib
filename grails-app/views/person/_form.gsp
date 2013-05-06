<%@ page import="com.chriswk.isharelib.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'biography', 'error')} ">
	<label for="biography">
		<g:message code="person.biography.label" default="Biography" />
		
	</label>
	<g:textField name="biography" value="${personInstance?.biography}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'birthPlace', 'error')} ">
	<label for="birthPlace">
		<g:message code="person.birthPlace.label" default="Birth Place" />
		
	</label>
	<g:textField name="birthPlace" value="${personInstance?.birthPlace}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="person.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day" value="${personInstance?.birthday}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'born', 'error')} ">
	<label for="born">
		<g:message code="person.born.label" default="Born" />
		
	</label>
	<g:select id="born" name="born.id" from="${com.chriswk.isharelib.Country.list()}" optionKey="id" required="" value="${personInstance?.born?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'imageUrl', 'error')} ">
	<label for="imageUrl">
		<g:message code="person.imageUrl.label" default="Image Url" />
		
	</label>
	<g:textField name="imageUrl" value="${personInstance?.imageUrl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'imdbId', 'error')} ">
	<label for="imdbId">
		<g:message code="person.imdbId.label" default="Imdb Id" />
		
	</label>
	<g:textField name="imdbId" value="${personInstance?.imdbId}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'jobs', 'error')} ">
	<label for="jobs">
		<g:message code="person.jobs.label" default="Jobs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.jobs?}" var="j">
    <li><g:link controller="job" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="job" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'job.label', default: 'Job')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'languages', 'error')} ">
	<label for="languages">
		<g:message code="person.languages.label" default="Languages" />
		
	</label>
	<g:select name="languages" from="${com.chriswk.isharelib.Language.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${personInstance?.languages*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="person.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${personInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'roles', 'error')} ">
	<label for="roles">
		<g:message code="person.roles.label" default="Roles" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personInstance?.roles?}" var="r">
    <li><g:link controller="movieRole" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="movieRole" action="create" params="['person.id': personInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'movieRole.label', default: 'MovieRole')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'tmdbId', 'error')} ">
	<label for="tmdbId">
		<g:message code="person.tmdbId.label" default="Tmdb Id" />
		
	</label>
	<g:field type="number" name="tmdbId" value="${personInstance.tmdbId}" />
</div>

