<#import "tpl/mainpage.ftlh" as mp>
<@mp.page>
Добавить пользователя
${message!}
<form action="/registration" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <div><label> Имя : <input type="text" name="name"/> </label></div>
    <div><label> Фамилия : <input type="text" name="surname"/> </label></div>
    <div><label> User Name : <input type="text" name="username"/> </label></div>
    <div><label> Password : <input type="password" name="password"/> </label></div>
    <div><input type="submit" value="Sign In"/></div>
</form>
</@mp.page>