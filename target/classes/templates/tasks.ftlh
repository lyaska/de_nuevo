<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/tasks" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Найти по предмету">
                <button type="submit" class="btn btn-primary ml-2">Найти</button>
            </form>
        </div>
    </div>

    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Создать новое поручение
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="text" class="form-control" name="text" placeholder="Введите текст" />
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="subject" placeholder="Предмет">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Создать</button>
                </div>
            </form>
        </div>
    </div>

    <div class="card-columns">
        <#list tasks as task>
            <div class="card my-3">
                <div class="m-2">
                    <span>${task.text}</span>
                    <i>${task.subject}</i>
                </div>
                <div class="card-footer text-muted">
                    ${task.authorName}
                </div>
            </div>
        <#else>
            Нет доступных поручений
        </#list>
    </div>
</@c.page>
