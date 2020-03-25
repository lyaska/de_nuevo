<#import "parts/common.ftlh" as c>

<@c.page>
    Список сотрудников

    <table>
        <thead>
        <tr>
            <th>Логин</th>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Отчество</th>
            <th>Должность</th>
            <th>Право доступа</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td>${user.firstName}</td>
                <td>${user.secondName}</td>
                <td>${user.patronymic}</td>
                <td>${user.position}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a></td>
                <td><a href="/userDelete/${user.id}">delete</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
    <a href="/main">На главную</a>
</@c.page>