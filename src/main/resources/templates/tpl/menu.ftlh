<#macro menu>
    <div class="container">
        <div><a href="/login">login</a></div>
        <div><a href="/information">Нужная информация</a></div>
        <div><a href="/data.html">Статическая страница</a></div>
        <div><a href="/manager">Администрирование</a></div>
        <div class="logout">
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <lable>Вы вошли как ${username!} <input type="submit" value="Logout"></lable>
            </form>
        </div>
    </div>
</#macro>