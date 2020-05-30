<#import "parts/common.ftl" as c>
<#include "parts/functions.ftl">

<@c.main>
    <table>
    <thead>
    <tr>
        <td>Организация</td>
        <td>Email</td>
        <td>Платформа</td>
        <td>Лицензия</td>
        <td>Версия</td>
        <td>Статус</td>
        <td>Мобильное приложение</td>
        <td>Поддержка</td>
        <td>Стоимость разработки</td>
        <td>Итого</td>
    </tr>
    </thead>
    <tbody>
    <#list ordersEdmc as order>
        <tr>
            <td>${order.getCustomersEdmc().getNameOrg()}</td>
            <td>${order.getCustomersEdmc().getEmail()}</td>
            <td>${order.getPlatforms().getType()}</td>
            <td>${order.getPlatforms().getLicenses().getTypeLicense()}</td>
            <td>-</td>
            <td>${order.statusOrder}</td>
            <td>
                <#if order.isMobileApp()>
                    ${order.getMobPrice()} &#8381
                <#else>
                    -
                </#if>
            </td>
            <td>
                <#if order.isSupport()>
                    ${order.getRegPrice()} &#8381
                <#else>
                    -
                </#if>
            </td>
            <td>${order.getTotalPrice()} &#8381</td>
            <td>
                <#assign
                num1 = order.getTotalPrice()?number,
                num2 = order.getRegPrice()?number,
                num3 = order.getMobPrice()?number
                >
                ${sum(num1,num2,num3)} &#8381
            </td>
        </tr>
    </#list>
    </tbody>
    </table>
    <table>
        <thead>
        <tr>
            <td>Организация</td>
            <td>Email</td>
            <td>Платформа</td>
            <td>Лицензия</td>
            <td>Версия</td>
            <td>Статус</td>
            <td>Мобильное приложение</td>
            <td>Поддержка</td>
            <td>Стоимость разработки</td>
            <td>Итого</td>
        </tr>
        </thead>
        <tbody>
        <#list ordersEdmc as order>
            <tr>
                <td>${order.getCustomersEdmc().getNameOrg()}</td>
                <td>${order.getCustomersEdmc().getEmail()}</td>
                <td>${order.getPlatforms().getType()}</td>
                <td>${order.getPlatforms().getLicenses().getTypeLicense()}</td>
                <td>-</td>
                <td>${order.statusOrder}</td>
                <td>
                    <#if order.isMobileApp()>
                        ${order.getMobPrice()} &#8381
                    <#else>
                        -
                    </#if>
                </td>
                <td>
                    <#if order.isSupport()>
                        ${order.getRegPrice()} &#8381
                    <#else>
                        -
                    </#if>
                </td>
                <td>${order.getTotalPrice()} &#8381</td>
                <td>
                    <#assign
                    num1 = order.getTotalPrice()?number,
                    num2 = order.getRegPrice()?number,
                    num3 = order.getMobPrice()?number
                    >
                    ${sum(num1,num2,num3)} &#8381
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.main>