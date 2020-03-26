<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Добавить/Редактировать поручение
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
            <div class="form-group">
                <input type="text" class="form-control" name="executor" placeholder="Исполнитель">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="term" placeholder="Срок выполнения">
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <input type="hidden" name="id" value="<#if task??>${task.id}</#if>" />
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
        </form>
    </div>
</div>