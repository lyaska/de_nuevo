<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <#if isCurrentUser>
        <#include "parts/taskEdit.ftlh" />
    </#if>
    <#include "parts/taskList.ftlh" />
</@c.page>