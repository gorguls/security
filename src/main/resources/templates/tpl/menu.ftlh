<#include "autorisInfo.ftlh">
<#macro menu>
    <div class="container">
        <div><a href="/information">Нужная информация</a></div>
        <div><a href="/data.html">Статическая страница</a></div>
        <#if isAdmin><div><a href="/manager">Администрирование</a></div></#if>
        <#if !known><div><a href="/login">login</a></div></#if>
        <#if known>
        <div class="logout">
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <!-- username берётся из autorisInfo.ftlh-->
                <lable>Вы вошли как ${username} <input type="submit" value="Logout"></lable>
            </form>
        </div>
        </#if>
    </div>
</#macro>