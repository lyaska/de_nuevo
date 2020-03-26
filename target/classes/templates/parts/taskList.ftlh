<#include "security.ftlh">
<div class="card-columns">
    <#list tasks as task>
        <div class="card my-3">
            <div class="m-2">
                <i>Педмет поручения: ${task.subject}</i>
                <p><span>${task.text}</span></p>
                <p>Срок исполнения: ${task.term}</p>
            </div>
            <div class="card-footer text-muted">
                Автор: <a href ="/user-tasks/${task.author.id}">${task.authorName}</a>
                <#if task.author.id == currentUserId>
                <p><a href="/user-tasks/${task.author.id}?task=${task.id}">Редактировать
                    </a></p></#if>
            </div>
            <div class="card-footer text-muted">
                Исполнитель: ${task.executor}

            </div>
        </div>
    <#else>
        Нет доступных поручений
    </#list>
</div>