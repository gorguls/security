<#macro adminPage>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Административная панель</title>
        <meta charset="UTF-8">
        <title>Реализация авторизации</title>
        <script src ="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <style>
            .container {
                display: flex;
                flex-direction: row;
                flex-wrap: nowrap;
            }
            .container div {
                border: 1px solid black;
                margin: 5px;
                padding: 10px 30px 10px 30px;
            }
            tr, th {
                padding: 3px 20px 3px 20px;
            }
            form div {
                margin: 5px 20px 5px 20px;
            }
        </style>
    </head>
    <body>
    <#nested>
    </body>
    </html>
</#macro>