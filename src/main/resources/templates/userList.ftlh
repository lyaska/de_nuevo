<#import "parts/common.ftlh" as c>
<@c.page>
    СПИСОК ПОЛЬЗОВАТЕЛЕЙ
    <table>
        <thead>
        <th>Name</th>
        <th>Role</th>
        <th></th>
        </thead>
    <tbody>
    <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a href="/user/${user.id}">Изменить</a></td>
        </tr>
    </#list>
    </tbody>
    </table>

</@c.page>