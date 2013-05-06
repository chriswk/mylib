<%@ page import="com.chriswk.isharelib.Country" %>



<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'iso', 'error')} ">
	<label for="iso">
		<g:message code="country.iso.label" default="Iso" />
		
	</label>
	<g:textField name="iso" value="${countryInstance?.iso}" />
</div>

<div class="fieldcontain ${hasErrors(bean: countryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="country.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${countryInstance?.name}" />
</div>

