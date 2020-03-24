<#import "parts/common.ftlh" as c>

<@c.page>

<div>СПИСОК ПОРУЧЕНИЙ</div>

<div>
    <form method="post">
        <input type="text" name="text" placeholder="Текст поручения" />
        <input type="text" name="subject" placeholder="Предмет поручения">
        <button type="submit">Создать поручение</button>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    </form>
</div>
<div>
<form method="get" action="/tasks">
    <input type="text" name="filter" value="${filter?ifExists}">
    <button type="submit">Найти по предмету</button>
</form>
</div>
<#list tasks as task>
    <div>
        <b>${task.id}</b>
        <span>${task.text}</span>
        <i>${task.subject}</i>
        <strong>${task.authorName}</strong>
    </div>
    <#else>
    Нет доступных поручений
</#list>
<div>
    <span><a href="/main">На главную</a></span>
</div>
</@c.page>