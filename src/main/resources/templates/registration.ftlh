<#import "tpl/mainpage.ftlh" as mp>
<@mp.page>
    Добавить пользователя
    ${message!}
    <div class="col-sm-3">
        <form action="/registration" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div class="mb-3">
                <label for="name" class="form-label">Имя</label>
                <input type="text" name="name" class="form-control" id="name" aria-describedby="nameHelp">
                <div id="usernameHelp" class="form-text">Что-то не так с именем</div>
            </div>

            <div class="mb-3">
                <label for="surname" class="form-label">Фамилия</label>
                <input type="text" name="surname" class="form-control" id="name" aria-describedby="surnameHelp">
                <div id="usernameHelp" class="form-text">Что-то не так с именем</div>
            </div>

            <div class="mb-3">
                <label for="username" class="form-label">Логин</label>
                <input type="text" name="username" class="form-control" id="username" aria-describedby="usernameHelp">
                <div id="usernameHelp" class="form-text">Что-то не так с именем</div>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Пароль</label>
                <input type="password" name="password" class="form-control" id="password" aria-describedby="passwordHelp">
                <div id="passwordHelp" class="form-text">Что-то не так с именем</div>
            </div>

            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Отправить</button>
            </div>
        </form>
    </div>
</@mp.page>