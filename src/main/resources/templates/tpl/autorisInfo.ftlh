<#assign
known=Session.SPRING_SECURITY_CONTEXT??
<#--?? - означают что берётся булево значение (конвертация в булево) -->
>
<#if known>
<#assign
    <#-- Получаем данные пользователя из сессии и в дальнейшем
     используем эти данные для отображения на страницах.
     Теперь не надо передавать данные авторизованного пользователя
     через Model из контроллера -->
user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
username = user.getUsername()
name = user.getName
surname = user.getSurname
isAdmin = user.isAdmin()
>
<#else>
<#assign
name = "Неизвестен"
isAdmin = false
>
</#if>