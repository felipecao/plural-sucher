
<%@ page import="plural.sucher.Entidade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entidade.label', default: 'Entidade')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	</head>
	<body>
		<a href="#list-entidade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
                <li><a class="home" href="${createLink(controller: 'sucher')}"><g:message code="default.home.label"/></a></li>
                <li><a class="list" href="${createLink(controller: 'entidade')}">Prototipo</a></li>
			</ul>
		</div>
		<div id="list-entidade" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>

                        <g:sortableColumn property="atrib1" title="${message(code: 'entidade.atrib1.label', default: 'atrib1')}" />
                        <g:sortableColumn property="atrib2" title="${message(code: 'entidade.atrib2.label', default: 'atrib2')}" />
                        <g:sortableColumn property="atrib3" title="${message(code: 'entidade.atrib3.label', default: 'atrib3')}" />
                        <g:sortableColumn property="atrib4" title="${message(code: 'entidade.atrib4.label', default: 'atrib4')}" />
                        <g:sortableColumn property="atrib5" title="${message(code: 'entidade.atrib5.label', default: 'atrib5')}" />
                        <g:sortableColumn property="atrib6" title="${message(code: 'entidade.atrib6.label', default: 'atrib6')}" />
                        <g:sortableColumn property="atrib7" title="${message(code: 'entidade.atrib7.label', default: 'atrib7')}" />
                        <g:sortableColumn property="atrib8" title="${message(code: 'entidade.atrib8.label', default: 'atrib8')}" />
                        <g:sortableColumn property="atrib9" title="${message(code: 'entidade.atrib9.label', default: 'atrib9')}" />
                        <g:sortableColumn property="atrib10" title="${message(code: 'entidade.atrib10.label', default: 'atrib10')}" />
                        <g:sortableColumn property="atrib11" title="${message(code: 'entidade.atrib11.label', default: 'atrib11')}" />
                        <g:sortableColumn property="atrib12" title="${message(code: 'entidade.atrib12.label', default: 'atrib12')}" />
                        <g:sortableColumn property="atrib13" title="${message(code: 'entidade.atrib13.label', default: 'atrib13')}" />
                        <g:sortableColumn property="atrib14" title="${message(code: 'entidade.atrib14.label', default: 'atrib14')}" />
                        <g:sortableColumn property="atrib15" title="${message(code: 'entidade.atrib15.label', default: 'atrib15')}" />
                        <g:sortableColumn property="atrib16" title="${message(code: 'entidade.atrib16.label', default: 'atrib16')}" />
                        <g:sortableColumn property="atrib17" title="${message(code: 'entidade.atrib17.label', default: 'atrib17')}" />
                        <g:sortableColumn property="atrib18" title="${message(code: 'entidade.atrib18.label', default: 'atrib18')}" />
                        <g:sortableColumn property="atrib19" title="${message(code: 'entidade.atrib19.label', default: 'atrib19')}" />
                        <g:sortableColumn property="atrib20" title="${message(code: 'entidade.atrib20.label', default: 'atrib20')}" />
                        <g:sortableColumn property="atrib21" title="${message(code: 'entidade.atrib21.label', default: 'atrib21')}" />
                        <g:sortableColumn property="atrib22" title="${message(code: 'entidade.atrib22.label', default: 'atrib22')}" />
                        <g:sortableColumn property="atrib23" title="${message(code: 'entidade.atrib23.label', default: 'atrib23')}" />
                        <g:sortableColumn property="atrib24" title="${message(code: 'entidade.atrib24.label', default: 'atrib24')}" />
                        <g:sortableColumn property="atrib25" title="${message(code: 'entidade.atrib25.label', default: 'atrib25')}" />
                        <g:sortableColumn property="atrib26" title="${message(code: 'entidade.atrib26.label', default: 'atrib26')}" />
                        <g:sortableColumn property="atrib27" title="${message(code: 'entidade.atrib27.label', default: 'atrib27')}" />
                        <g:sortableColumn property="atrib28" title="${message(code: 'entidade.atrib28.label', default: 'atrib28')}" />
                        <g:sortableColumn property="atrib29" title="${message(code: 'entidade.atrib29.label', default: 'atrib29')}" />
                        <g:sortableColumn property="atrib30" title="${message(code: 'entidade.atrib30.label', default: 'atrib30')}" />
                        <g:sortableColumn property="atrib31" title="${message(code: 'entidade.atrib31.label', default: 'atrib31')}" />
                        <g:sortableColumn property="atrib32" title="${message(code: 'entidade.atrib32.label', default: 'atrib32')}" />
                        <g:sortableColumn property="atrib33" title="${message(code: 'entidade.atrib33.label', default: 'atrib33')}" />
                        <g:sortableColumn property="atrib34" title="${message(code: 'entidade.atrib34.label', default: 'atrib34')}" />
                        <g:sortableColumn property="atrib35" title="${message(code: 'entidade.atrib35.label', default: 'atrib35')}" />
                        <g:sortableColumn property="atrib36" title="${message(code: 'entidade.atrib36.label', default: 'atrib36')}" />
                        <g:sortableColumn property="atrib37" title="${message(code: 'entidade.atrib37.label', default: 'atrib37')}" />
                        <g:sortableColumn property="atrib38" title="${message(code: 'entidade.atrib38.label', default: 'atrib38')}" />
                        <g:sortableColumn property="atrib39" title="${message(code: 'entidade.atrib39.label', default: 'atrib39')}" />
                        <g:sortableColumn property="atrib40" title="${message(code: 'entidade.atrib40.label', default: 'atrib40')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${entidadeInstanceList}" status="i" var="entidadeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib1")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib2")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib3")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib4")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib5")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib6")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib7")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib8")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib9")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib10")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib11")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib12")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib13")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib14")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib15")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib16")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib17")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib18")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib19")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib20")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib21")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib22")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib23")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib24")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib25")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib26")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib27")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib28")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib29")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib30")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib31")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib32")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib33")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib34")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib35")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib36")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib37")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib38")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib39")}" size="7"></td>
                        <td><input type="text" value="${fieldValue(bean: entidadeInstance, field: "atrib40")}" size="7"></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${entidadeInstanceTotal}" />
			</div>
            <div id="tooltip" style="display: block; border: 1px solid red; background-color: green;" >
                &nbsp;
            </div>

            <script>
                $(function() {
                    $("td > input").mouseover(function () {
                        $("#tooltip").html(this.value);
                        var position = $(this).offset();
                        $('#tooltip').animate({
                            'marginTop' : position.top - 720,
                            'marginLeft' : position.left - 220
                        });
                    });
                });
            </script>
		</div>
	</body>
</html>
