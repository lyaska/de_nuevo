<#import "parts/common.ftlh" as c>

<@c.page>
    Изменить данные

    <form action="/user" method="post">
        <p><input type="text" name="username" value="${user.username}"></p>
        <input type="text" name="firstName" value="${user.firstName}">
        <input type="text" name="secondName" value="${user.secondName}">
        <input type="text" name="patronymic" value="${user.patronymic}">
        <p><input type="text" name="position" value="${user.position}"></p>
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Save</button>
    </form>
</@c.page>