<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <@l.logout />
    <span><a href="user">UserList</a> </span>
</div>
<div>
<form method="post" enctype="multipart/form-data">
    <input type="text" name="text" placeholder="Въведете съобщение" />
    <input type="text" name="tag" placeholder="Въведете тагове"/>
    <input type="file" name="file"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" >Добави</button>
</form>
</div>

<div>Списък на съобщения</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}"/>
    <button type="submit">Търси</button>
</form>
<#list messages as message>
<div>
<b>${message.id}</b>
<span>${message.text}</span>
<i>${message.tag}</i>
<strong>${message.authorName}</strong>
<div>
    <#if message.filename??>
    <img src="/img/${message.filename}"/>
    </#if>
</div>
</div>
<#else>
No messages
</#list>
</@c.page>