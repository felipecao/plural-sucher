<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="sucher.title" /></title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(controller: 'sucher')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>
<div id="wort-sucher" class="content scaffold-create" role="main">
    <h1><g:message code="sucher.please" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="search" >
        <fieldset class="form">
            <label for="term"><g:message code="sucher.term" default="Text" /></label>
            <g:textField name="term" value=""/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="search" class="save" value="${message(code: 'sucher.button')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
