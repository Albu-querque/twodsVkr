<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
    <h1>List db</h1>
    <br/>
    <div>
        <#list platforms as p>
            <i>${p.type} </i>
            <i>${p.licenses.typeLicense} </i>
            <i>${p.ordersEdmc.totalPrice} </i>
            <#sep>, </#sep>
        <#else>
            <h5>List is empty</h5>
        </#list>
    </div>
    <div>
        <#list customers as c>
            <i>${c.nameOrg} </i>

            <#sep>, </#sep>
        <#else>
            <h5>List is empty</h5>
        </#list>
    </div>
</body>
</html>