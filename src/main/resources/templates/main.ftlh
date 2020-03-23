<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<form action="/organisation">
    <button>СПРАВОЧНИК ОРГАНИЗАЦИИ</button>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>

<form action="/tasks">
    <button>ПОРУЧЕНИЯ</button>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>

    <div>
        <@l.logout />
    </div>

</@c.page>