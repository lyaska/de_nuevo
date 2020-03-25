<#import "parts/common.ftlh" as c>

<@c.page>
<form action="/organisation">
    <button>СПРАВОЧНИК ОРГАНИЗАЦИИ</button>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>

<form action="/tasks">
    <button>ПОРУЧЕНИЯ</button>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>


</@c.page>