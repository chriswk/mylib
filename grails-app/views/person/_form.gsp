<%@ page import="com.chriswk.isharelib.Person" %>
<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="person.name.label" default="Name" />

    </label>
    <g:textField name="name" value="${personInstance?.name}" required="true"/>
</div>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'tmdbId', 'error')} ">
    <label for="tmdbId">
        <g:message code="person.tmdbId.label" default="Tmdb Id" />

    </label>
    <g:textField name="tmdbId" value="${personInstance.tmdbId}" />
</div>



