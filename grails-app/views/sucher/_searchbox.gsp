<g:form action="search" id="searchForm" onsubmit="showModal();">
    <fieldset class="form">
        <label for="term"><g:message code="sucher.term" default="Text" /></label>
        <g:textField name="term" value=""/>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="search" class="save" value="${message(code: 'sucher.button')}" />
    </fieldset>
</g:form>

<script>
    function showModal(){
        document.getElementById("modalPanel").style.display = 'block';
    }
</script>