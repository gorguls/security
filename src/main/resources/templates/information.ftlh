<#import "tpl/mainpage.ftlh" as mp>
<@mp.page>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <lable>Вы вошли как ${username!} <input type="submit" value="Logout"></lable>
</form>
    ${userinfo!}
</@mp.page>