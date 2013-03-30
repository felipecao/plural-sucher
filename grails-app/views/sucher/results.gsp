
<%@ page import="plural.sucher.Term" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'term.label', default: 'Term')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(controller: 'sucher')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>
<div id="folge" class="content scaffold-show" role="main">
    <h1><g:message code="sucher.results" /></h1>
    <ol class="property-list term">
        <g:if test="${plural}">

            <li class="fieldcontain">
                <span id="term-label" class="property-label"><strong><g:message code="sucher.term" /></strong></span>
                <span class="property-value" aria-labelledby="term-label">${term}</span>
            </li>

            <li class="fieldcontain">
                <span id="translation-label" class="property-label"><strong><g:message code="sucher.translation" /></strong></span>
                <span class="property-value" aria-labelledby="term-label">${translation}</span>
            </li>

            <li class="fieldcontain">
                <span id="plural-label" class="property-label"><strong><g:message code="sucher.plural" /></strong></span>
                <span class="property-value" aria-labelledby="plural-label">${plural}</span>
            </li>

        </g:if>
        <g:else>
            <g:message code="sucher.noresults" args="[term]"/>
        </g:else>
    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:link class="edit" action="index"><g:message code="sucher.back" /></g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>
