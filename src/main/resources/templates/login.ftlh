<#import "tpl/mainpage.ftlh" as mp>
<@mp.page>
    <div class="col-sm-3">
        <form action="/login" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div class="mb-3">
                <label for="username" class="form-label">Имя пользователя</label>
                <input type="text" name="username" class="form-control" id="username" aria-describedby="usernameHelp">
                <div id="usernameHelp" class="form-text">Что-то не так с именем</div>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Пароль</label>
                <input type="password" name="password" class="form-control" id="password" aria-describedby="passwordHelp">
                <div id="passwordHelp" class="form-text">Что-то не так с паролем</div>
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Войти</button>
            </div>
        </form>
        <div class="mb-3">
            <a href="/registration">Регистрация</a>
        </div>
    </div>
</@mp.page>