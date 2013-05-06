<%@ page import="com.chriswk.isharelib.Movie" %>


<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'title', 'error')} ">
    <label for="title">
        <g:message code="movie.title.label" default="Title" />

    </label>
    <g:textField name="title" value="${movieInstance?.title}" />
</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'tagline', 'error')} ">
    <label for="tagline">
        <g:message code="movie.tagline.label" default="Tagline" />

    </label>
    <g:textField name="tagline" value="${movieInstance?.tagline}" />
</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'releaseDate', 'error')} ">
    <label for="releaseDate">
        <g:message code="movie.releaseDate.label" default="Release Date" />

    </label>
    <g:datePicker name="releaseDate" precision="day" value="${movieInstance?.releaseDate}" />
</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="movie.description.label" default="Description" />

    </label>
    <g:textField name="description" value="${movieInstance?.description}" />
</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'summary', 'error')} ">
    <label for="summary">
        <g:message code="movie.summary.label" default="Summary" />

    </label>
    <g:textField name="summary" value="${movieInstance?.summary}" />
</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'tmdbId', 'error')} ">
    <label for="tmdbId">
        <g:message code="movie.tmdbId.label" default="Tmdb Id" />

    </label>
    <g:field type="number" name="tmdbId" value="${movieInstance.tmdbId}" />
</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'cast', 'error')} ">
	<label for="cast">
		<g:message code="movie.cast.label" default="Cast" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${movieInstance?.cast?}" var="c">
    <li><g:link controller="movieRole" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="movieRole" action="create" params="['movie.id': movieInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'movieRole.label', default: 'MovieRole')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'crew', 'error')} ">
	<label for="crew">
		<g:message code="movie.crew.label" default="Crew" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${movieInstance?.crew?}" var="c">
    <li><g:link controller="job" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="job" action="create" params="['movie.id': movieInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'job.label', default: 'Job')])}</g:link>
</li>
</ul>

</div>








