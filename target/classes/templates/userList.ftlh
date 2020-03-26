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
                <td><a href="/user/${user.id}">Редактировать</a></td>
                
            </tr>
        </#list>
        </tbody>
    </table>

</@c.page>