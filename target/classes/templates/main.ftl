<#import "parts/common.ftl" as c>
<#include "parts/functions.ftl">


<@c.main>
    <div class="container-my">
        <table class="table table-bordered table-hover">
            <caption>Информация о продажах Портальных решений</caption>
            <thead class="thead-dark">
            <tr>
                <th scope="col">Организация</th>
                <th scope="col">Email</th>
                <th scope="col">Платформа</th>
                <th scope="col">Лицензия</th>
                <th scope="col">Версия</th>
                <th scope="col">Статус</th>
                <th scope="col">Мобильное приложение</th>
                <th scope="col">Поддержка</th>
                <th scope="col">Стоимость разработки</th>
                <th scope="col">Итого</th>
            </tr>
            </thead>
            <tbody>
            <#list ordersEdmc as order>
                <tr class="table-warning">
                    <td>${order.getCustomersEdmc().getNameOrg()}</td>
                    <td>${order.getCustomersEdmc().getEmail()}</td>
                    <td>${order.getPlatforms().getType()}</td>
                    <td class="col-sm-3">${order.getPlatforms().getLicenses().getTypeLicense()}</td>
                    <td>-</td>
                    <td>${order.statusOrder}</td>
                    <td>
                        <#if order.isMobileApp()>
                            ${order.getMobPrice()}&#8381
                        <#else>
                            -
                        </#if>
                    </td>
                    <td>
                        <#if order.isSupport()>
                            ${order.getRegPrice()}&#8381/мес
                        <#else>
                            -
                        </#if>
                    </td>
                    <td>${order.getTotalPrice()}&#8381</td>
                    <td>
                        <#assign
                        num1 = order.getTotalPrice()?number,
                        num2 = order.getRegPrice()?number,
                        num3 = order.getMobPrice()?number
                        >
                        ${sum(num1,num2,num3)}&#8381
                    </td>
                </tr>
            </#list>
            <tr class="table-warning">
                <td colspan="9">Сумма:</td>
                <td class="bg-warning">
                    ${resSum}&#8381
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <#assign resSum=0>
    <div class="container">
        <table class="table table-bordered table-hover">
            <caption>Информация о продажах СЭД</caption>
            <thead class="thead-dark">
            <tr>
                <th scope="col">Организация</th>
                <th scope="col">Email</th>
                <th scope="col">Тип портала</th>
                <th scope="col">Статус</th>
                <th scope="col">Поддержка до</th>
                <th scope="col">Стоимость разработки</th>
            </tr>
            </thead>
            <tbody>
            <#list ordersPortalSol as order>
                <tr class="table-warning">
                    <td>${order.getCustomer().getNameOrg()}</td>
                    <td>${order.getCustomer().getEmail()}</td>
                    <td>${order.getPortal().getType()}</td>
                    <td>${order.getStatusOrder()}</td>
                    <td>${order.getDate()}</td>
                    <td>${order.getTotalPrice()}</td>
                    <input type="hidden" ${sum(order.getTotalPrice()?number)}>
            </#list>
            <tr class="table-warning">
                <td colspan="5">Сумма:</td>
                <td class="bg-warning">
                    ${resSum}&#8381
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</@c.main>