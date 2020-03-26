<div class="card-columns">
    <#list tasks as task>
        <div class="card my-3">
            <div class="m-2">
                <i>Педмет поручения: ${task.subject}</i>
                <p><span>${task.text}</span></p>
                <p>Срок исполнения: ${task.term}</p>
            </div>
            <div class="card-footer text-muted">
                Автор: ${task.authorName}
            </div>
            <div class="card-footer text-muted">
                Исполнитель: ${task.executor}
            </div>
        </div>
    <#else>
        Нет доступных поручений
    </#list>
</div>