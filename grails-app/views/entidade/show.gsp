
<%@ page import="plural.sucher.Entidade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entidade.label', default: 'Entidade')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-entidade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-entidade" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list entidade">
			
				<g:if test="${entidadeInstance?.atrib1}">
				<li class="fieldcontain">
					<span id="atrib1-label" class="property-label"><g:message code="entidade.atrib1.label" default="Atrib1" /></span>
					
						<span class="property-value" aria-labelledby="atrib1-label"><g:fieldValue bean="${entidadeInstance}" field="atrib1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib10}">
				<li class="fieldcontain">
					<span id="atrib10-label" class="property-label"><g:message code="entidade.atrib10.label" default="Atrib10" /></span>
					
						<span class="property-value" aria-labelledby="atrib10-label"><g:fieldValue bean="${entidadeInstance}" field="atrib10"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib11}">
				<li class="fieldcontain">
					<span id="atrib11-label" class="property-label"><g:message code="entidade.atrib11.label" default="Atrib11" /></span>
					
						<span class="property-value" aria-labelledby="atrib11-label"><g:fieldValue bean="${entidadeInstance}" field="atrib11"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib12}">
				<li class="fieldcontain">
					<span id="atrib12-label" class="property-label"><g:message code="entidade.atrib12.label" default="Atrib12" /></span>
					
						<span class="property-value" aria-labelledby="atrib12-label"><g:fieldValue bean="${entidadeInstance}" field="atrib12"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib13}">
				<li class="fieldcontain">
					<span id="atrib13-label" class="property-label"><g:message code="entidade.atrib13.label" default="Atrib13" /></span>
					
						<span class="property-value" aria-labelledby="atrib13-label"><g:fieldValue bean="${entidadeInstance}" field="atrib13"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib14}">
				<li class="fieldcontain">
					<span id="atrib14-label" class="property-label"><g:message code="entidade.atrib14.label" default="Atrib14" /></span>
					
						<span class="property-value" aria-labelledby="atrib14-label"><g:fieldValue bean="${entidadeInstance}" field="atrib14"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib15}">
				<li class="fieldcontain">
					<span id="atrib15-label" class="property-label"><g:message code="entidade.atrib15.label" default="Atrib15" /></span>
					
						<span class="property-value" aria-labelledby="atrib15-label"><g:fieldValue bean="${entidadeInstance}" field="atrib15"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib16}">
				<li class="fieldcontain">
					<span id="atrib16-label" class="property-label"><g:message code="entidade.atrib16.label" default="Atrib16" /></span>
					
						<span class="property-value" aria-labelledby="atrib16-label"><g:fieldValue bean="${entidadeInstance}" field="atrib16"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib17}">
				<li class="fieldcontain">
					<span id="atrib17-label" class="property-label"><g:message code="entidade.atrib17.label" default="Atrib17" /></span>
					
						<span class="property-value" aria-labelledby="atrib17-label"><g:fieldValue bean="${entidadeInstance}" field="atrib17"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib18}">
				<li class="fieldcontain">
					<span id="atrib18-label" class="property-label"><g:message code="entidade.atrib18.label" default="Atrib18" /></span>
					
						<span class="property-value" aria-labelledby="atrib18-label"><g:fieldValue bean="${entidadeInstance}" field="atrib18"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib19}">
				<li class="fieldcontain">
					<span id="atrib19-label" class="property-label"><g:message code="entidade.atrib19.label" default="Atrib19" /></span>
					
						<span class="property-value" aria-labelledby="atrib19-label"><g:fieldValue bean="${entidadeInstance}" field="atrib19"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib2}">
				<li class="fieldcontain">
					<span id="atrib2-label" class="property-label"><g:message code="entidade.atrib2.label" default="Atrib2" /></span>
					
						<span class="property-value" aria-labelledby="atrib2-label"><g:fieldValue bean="${entidadeInstance}" field="atrib2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib20}">
				<li class="fieldcontain">
					<span id="atrib20-label" class="property-label"><g:message code="entidade.atrib20.label" default="Atrib20" /></span>
					
						<span class="property-value" aria-labelledby="atrib20-label"><g:fieldValue bean="${entidadeInstance}" field="atrib20"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib21}">
				<li class="fieldcontain">
					<span id="atrib21-label" class="property-label"><g:message code="entidade.atrib21.label" default="Atrib21" /></span>
					
						<span class="property-value" aria-labelledby="atrib21-label"><g:fieldValue bean="${entidadeInstance}" field="atrib21"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib22}">
				<li class="fieldcontain">
					<span id="atrib22-label" class="property-label"><g:message code="entidade.atrib22.label" default="Atrib22" /></span>
					
						<span class="property-value" aria-labelledby="atrib22-label"><g:fieldValue bean="${entidadeInstance}" field="atrib22"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib23}">
				<li class="fieldcontain">
					<span id="atrib23-label" class="property-label"><g:message code="entidade.atrib23.label" default="Atrib23" /></span>
					
						<span class="property-value" aria-labelledby="atrib23-label"><g:fieldValue bean="${entidadeInstance}" field="atrib23"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib24}">
				<li class="fieldcontain">
					<span id="atrib24-label" class="property-label"><g:message code="entidade.atrib24.label" default="Atrib24" /></span>
					
						<span class="property-value" aria-labelledby="atrib24-label"><g:fieldValue bean="${entidadeInstance}" field="atrib24"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib25}">
				<li class="fieldcontain">
					<span id="atrib25-label" class="property-label"><g:message code="entidade.atrib25.label" default="Atrib25" /></span>
					
						<span class="property-value" aria-labelledby="atrib25-label"><g:fieldValue bean="${entidadeInstance}" field="atrib25"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib26}">
				<li class="fieldcontain">
					<span id="atrib26-label" class="property-label"><g:message code="entidade.atrib26.label" default="Atrib26" /></span>
					
						<span class="property-value" aria-labelledby="atrib26-label"><g:fieldValue bean="${entidadeInstance}" field="atrib26"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib27}">
				<li class="fieldcontain">
					<span id="atrib27-label" class="property-label"><g:message code="entidade.atrib27.label" default="Atrib27" /></span>
					
						<span class="property-value" aria-labelledby="atrib27-label"><g:fieldValue bean="${entidadeInstance}" field="atrib27"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib28}">
				<li class="fieldcontain">
					<span id="atrib28-label" class="property-label"><g:message code="entidade.atrib28.label" default="Atrib28" /></span>
					
						<span class="property-value" aria-labelledby="atrib28-label"><g:fieldValue bean="${entidadeInstance}" field="atrib28"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib29}">
				<li class="fieldcontain">
					<span id="atrib29-label" class="property-label"><g:message code="entidade.atrib29.label" default="Atrib29" /></span>
					
						<span class="property-value" aria-labelledby="atrib29-label"><g:fieldValue bean="${entidadeInstance}" field="atrib29"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib3}">
				<li class="fieldcontain">
					<span id="atrib3-label" class="property-label"><g:message code="entidade.atrib3.label" default="Atrib3" /></span>
					
						<span class="property-value" aria-labelledby="atrib3-label"><g:fieldValue bean="${entidadeInstance}" field="atrib3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib30}">
				<li class="fieldcontain">
					<span id="atrib30-label" class="property-label"><g:message code="entidade.atrib30.label" default="Atrib30" /></span>
					
						<span class="property-value" aria-labelledby="atrib30-label"><g:fieldValue bean="${entidadeInstance}" field="atrib30"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib31}">
				<li class="fieldcontain">
					<span id="atrib31-label" class="property-label"><g:message code="entidade.atrib31.label" default="Atrib31" /></span>
					
						<span class="property-value" aria-labelledby="atrib31-label"><g:fieldValue bean="${entidadeInstance}" field="atrib31"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib32}">
				<li class="fieldcontain">
					<span id="atrib32-label" class="property-label"><g:message code="entidade.atrib32.label" default="Atrib32" /></span>
					
						<span class="property-value" aria-labelledby="atrib32-label"><g:fieldValue bean="${entidadeInstance}" field="atrib32"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib33}">
				<li class="fieldcontain">
					<span id="atrib33-label" class="property-label"><g:message code="entidade.atrib33.label" default="Atrib33" /></span>
					
						<span class="property-value" aria-labelledby="atrib33-label"><g:fieldValue bean="${entidadeInstance}" field="atrib33"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib34}">
				<li class="fieldcontain">
					<span id="atrib34-label" class="property-label"><g:message code="entidade.atrib34.label" default="Atrib34" /></span>
					
						<span class="property-value" aria-labelledby="atrib34-label"><g:fieldValue bean="${entidadeInstance}" field="atrib34"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib35}">
				<li class="fieldcontain">
					<span id="atrib35-label" class="property-label"><g:message code="entidade.atrib35.label" default="Atrib35" /></span>
					
						<span class="property-value" aria-labelledby="atrib35-label"><g:fieldValue bean="${entidadeInstance}" field="atrib35"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib36}">
				<li class="fieldcontain">
					<span id="atrib36-label" class="property-label"><g:message code="entidade.atrib36.label" default="Atrib36" /></span>
					
						<span class="property-value" aria-labelledby="atrib36-label"><g:fieldValue bean="${entidadeInstance}" field="atrib36"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib37}">
				<li class="fieldcontain">
					<span id="atrib37-label" class="property-label"><g:message code="entidade.atrib37.label" default="Atrib37" /></span>
					
						<span class="property-value" aria-labelledby="atrib37-label"><g:fieldValue bean="${entidadeInstance}" field="atrib37"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib38}">
				<li class="fieldcontain">
					<span id="atrib38-label" class="property-label"><g:message code="entidade.atrib38.label" default="Atrib38" /></span>
					
						<span class="property-value" aria-labelledby="atrib38-label"><g:fieldValue bean="${entidadeInstance}" field="atrib38"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib39}">
				<li class="fieldcontain">
					<span id="atrib39-label" class="property-label"><g:message code="entidade.atrib39.label" default="Atrib39" /></span>
					
						<span class="property-value" aria-labelledby="atrib39-label"><g:fieldValue bean="${entidadeInstance}" field="atrib39"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib4}">
				<li class="fieldcontain">
					<span id="atrib4-label" class="property-label"><g:message code="entidade.atrib4.label" default="Atrib4" /></span>
					
						<span class="property-value" aria-labelledby="atrib4-label"><g:fieldValue bean="${entidadeInstance}" field="atrib4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib40}">
				<li class="fieldcontain">
					<span id="atrib40-label" class="property-label"><g:message code="entidade.atrib40.label" default="Atrib40" /></span>
					
						<span class="property-value" aria-labelledby="atrib40-label"><g:fieldValue bean="${entidadeInstance}" field="atrib40"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib5}">
				<li class="fieldcontain">
					<span id="atrib5-label" class="property-label"><g:message code="entidade.atrib5.label" default="Atrib5" /></span>
					
						<span class="property-value" aria-labelledby="atrib5-label"><g:fieldValue bean="${entidadeInstance}" field="atrib5"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib6}">
				<li class="fieldcontain">
					<span id="atrib6-label" class="property-label"><g:message code="entidade.atrib6.label" default="Atrib6" /></span>
					
						<span class="property-value" aria-labelledby="atrib6-label"><g:fieldValue bean="${entidadeInstance}" field="atrib6"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib7}">
				<li class="fieldcontain">
					<span id="atrib7-label" class="property-label"><g:message code="entidade.atrib7.label" default="Atrib7" /></span>
					
						<span class="property-value" aria-labelledby="atrib7-label"><g:fieldValue bean="${entidadeInstance}" field="atrib7"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib8}">
				<li class="fieldcontain">
					<span id="atrib8-label" class="property-label"><g:message code="entidade.atrib8.label" default="Atrib8" /></span>
					
						<span class="property-value" aria-labelledby="atrib8-label"><g:fieldValue bean="${entidadeInstance}" field="atrib8"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entidadeInstance?.atrib9}">
				<li class="fieldcontain">
					<span id="atrib9-label" class="property-label"><g:message code="entidade.atrib9.label" default="Atrib9" /></span>
					
						<span class="property-value" aria-labelledby="atrib9-label"><g:fieldValue bean="${entidadeInstance}" field="atrib9"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${entidadeInstance?.id}" />
					<g:link class="edit" action="edit" id="${entidadeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
