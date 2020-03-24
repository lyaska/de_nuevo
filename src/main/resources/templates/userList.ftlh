<#import "parts/common.ftlh" as c>

<@c.page>
    Список сотрудников

    <table>
        <thead>
        <tr>
            <th>Имя пользователя</th>
            <th>Право доступа</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a></td>
                <td><a href="/userDelete/${user.id}">delete</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
    <a href="/main">На главную</a>
</@c.page>