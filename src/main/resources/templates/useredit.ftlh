<#import "tpl/administrator.ftlh" as ap>
<@ap.adminPage>
    Управление пользователем
    <form action="/manager" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div><label><input type="text" name="username" value="${user.username!}"/>Логин</label></div>
        <div><label><input type="text" name="userpassword" value="${user.password!}"/>Пароль</label></div>
        <div><label><input type="text" name="name" value="${user.name!}"/>Имя</label></div>
        <div><label><input type="text" name="surname" value="${user.surname!}"/>Фамилия</label></div>
        <div><input type="hidden" name="userId" value="${user.id!}"/></div>
        <#list roles as role>
            <div><label><input type="checkbox" name="${role!}" ${user.role!?seq_contains(role)?string("checked", "")}/>${role!}</label></div>
        </#list>
        <button type="submit">Сохранить</button>
    </form>

</@ap.adminPage>