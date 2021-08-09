
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<link rel="icon" href="images/favicon-194x194.png" type="image/x-icon">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/home.css" rel="stylesheet" type="text/css">
        <title>My Front Page</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="main">
                <div class="left">
                    <div class="image">
                        <img src="images/${ct.image}" alt="First">
                    </div>
                    <div class="description">
                        Lorem ipsum dolor sit amet
                    </div>
                    <div class="content">
                        <ul > 
                            <c:forEach items="${listP}" var="o" >
                                <li class="span4">
                                    <div class="image">
                                        <img src="images/${o.img.url}">
                                    </div>
                                    <h4>
                                        <a href="detail?id=${o.id}">${o.name}</a>
                                    </h4>
                                    <p>
                                        ${o.description}
                                    </p>
                                </li>
                            </c:forEach>
                        </ul>

                        <div class="paging">
							<c:if test="${endP > 1}">
								<c:forEach begin="1" end="${endP}" var="i">
									<a class="${tag == i?"active":""}"  href="home?index=${i}">${i}</a>
								</c:forEach>
							</c:if>
						</div>
					</div>
					<div class="about">
						<h3>About me</h3>
					</div>
					<div class="about-detail">
						${ct.about}
					</div>
				</div>
				<div class="right">
					<jsp:include page="Right.jsp"/>
				</div>
			</div>
		</div>
		<jsp:include page="Footer.jsp"/>

	</body>
</html>
