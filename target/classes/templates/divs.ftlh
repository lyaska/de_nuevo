<#import "parts/common.ftlh" as c>

<@c.page>

Подразделения
    <p><a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Добавить
        </a></p>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="text" class="form-control" name="divName" placeholder="Введите название" />
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="contact" placeholder="Контакты">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="chef" placeholder="Руководитель">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Создать</button>
                </div>
            </form>
        </div>
    </div>

    <table>
        <thead>
        <tr>
            <th>Название</th>
            <th>Контакты</th>
            <th>Руководитель</th>
        </tr>
        </thead>
        <tbody>
        <#list divs as div>
            <tr>
                <td>${div.divName}</td>
                <td>${div.contact}</td>
                <td>${div.chef}</td>
            </tr>
        </#list>
        </tbody>
    </table>


</@c.page>