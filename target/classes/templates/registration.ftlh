<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
Добавление нового пользователя
${message}

<@l.login "/registration" />
</@c.page>