<#assign
    resSum=0
>
<#function sum nums...>
    <#local
        summ=0
    >
    <#if nums?size != 0>
        <#list nums as n>
            <#local summ += n>
        </#list>
    </#if>
    <#assign resSum+=summ>

    <#return summ>
</#function>
