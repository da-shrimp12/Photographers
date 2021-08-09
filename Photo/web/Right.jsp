<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/right.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="header-right">
            <h4>Share this page</h4>
        </div>
        <div class="social">
            <div>
                <ul>
                    <c:forEach var="o" items="${share}">
                        <li><img src="images/${o.icon}"><a href="${o.url}"><span>Share on ${o.social}</span></a></li>
                    </c:forEach>
                </ul>
            </div>

        </div>
    </body>
</html>
