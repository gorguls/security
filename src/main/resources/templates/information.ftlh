<#import "tpl/mainpage.ftlh" as mp>
<#import "tpl/menu.ftlh" as menu>
<@mp.page>
    <@menu.menu></@menu.menu>
    ${userinfo!}
</@mp.page>