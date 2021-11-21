<#import "tpl/administrator.ftlh" as ap>
<#import "tpl/menu.ftlh" as menu>
<@ap.adminPage>
    <@menu.menu></@menu.menu>
    <table border="1">
        <caption>Список пользователей</caption>
        <tr>
            <th>ID</th>
            <th>Login</th>
            <th>Пароль</th>
            <th>Роли</th>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Действие</th>
        </tr>

        <#list users as user>
            <tr>
                <td>${user.id!}</td>
                <td>${user.username!}</td>
                <td>${user.password!}</td>
                <td><#list user.role as role> ${role!} <#sep>, </#list></td>
                <td>${user.name!}</td>
                <td>${user.surname!}</td>
                <td><a href="/manager/${user.id!}">Изменить</a></td>
            </tr>
        </#list>
    </table>
</@ap.adminPage>