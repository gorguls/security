<#include "autorisInfo.ftlh">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Пример Авторизации</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/information">Информация</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/data.html">Статическая страница</a>
                    </li>

                    <#if isAdmin>
                        <li class="nav-item">
                            <a class="nav-link" href="/manager">Администрирование</a>
                        </li>
                    </#if>

                    <#if !known>
                        <form class="d-flex" action="/login" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button class="btn btn-primary" type="submit">Войти</button>
                        </form>
                    </#if>

                    <#if known>
                        <form class="d-flex" action="/logout" method="post">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button class="btn btn-primary" type="submit">Выйти</button>
                        </form>
                    </#if>
                </ul>
            </div>
        </div>
    </nav>