
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/header.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="nav">
            <div class= "nav-inner">
                <ul>
                    <li> <a class="${clickHome}" href="home">My front page</a></li>
                    <!--list galery-->
                    <c:forEach items="${gallery}" var="o" >
                        <li><a class="${activeG == o.id?"activeMenu":""}" href="detail?id=${o.id}">${o.name}</a> </li>
                        </c:forEach>
                    <!--end list galery-->
                    <li> <a class="${clickContact}"  href="contact">Contact</a> </li>
                </ul>
            </div>

        </div>
        <div class="header">
            <div class="header-inner">
                <div class="img"> </div>
                <div class="title ">
					<a href="home"> PHOTOGRAPHER </a>
                </div>
                <div class="subtitle">
                    Welcome to this website
                </div>
            </div>
        </div>
    </body>
</html>
