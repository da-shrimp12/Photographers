
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<link rel="icon" href="images/favicon-194x194.png" type="image/x-icon">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./css/home.css" rel="stylesheet" type="text/css">
		<link href="css/w3.css" rel="stylesheet" type="text/css"/>
        <title>My Front Page</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="main">
                <div class="left">
                    <div class="about">
                        <h3>${g.name}</h3>
                    </div>

					<!--Slide show-->					
					<div class="imageGaler ">
						<div class="w3-content w3-display-container">
							<c:forEach items="${listI}" var="o" varStatus="loop">
								<a class="mySlides" ><img src="images/${o.url}"></a>
								</c:forEach>
							<button class="w3-button w3-blue-gray w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
							<button class="w3-button w3-blue-gray w3-display-right" onclick="plusDivs(1)">&#10095;</button>
						</div>
					</div>
					<!------------->

                    <div class="contentGalery">
						<!--Modal Image Gallery-->
						<div class="w3-row-padding">
							<div class="w3-container w3-third">
								<c:forEach items="${listI}" var="o" varStatus="loop">
									<li class="span4">	
										<img src="images/${o.url}" style="width:100%;cursor:pointer" 
											 onclick="onClick(this)" class="w3-hover-opacity">
									</li>
								</c:forEach>
							</div>
						</div>
						<div id="modal01" class="w3-modal" onclick="this.style.display = 'none'">
							<span class="w3-button w3-hover-red w3-xlarge w3-display-topright">&times;</span>
							<div class="w3-modal-content w3-animate-zoom">
								<img id="img01" style="display: block;border-radius: 1%; border: 15px solid whitesmoke;width:100%">
							</div>
						</div>
					</div>

				</div>
				<div class="right">
					<jsp:include page="Right.jsp"/>
				</div>
			</div>
		</div>
		<jsp:include page="Footer.jsp"/>
		<!--Slide Show-->
		<script>
			var slideIndex = 1;
			showDivs(slideIndex);

			function plusDivs(n) {
				showDivs(slideIndex += n);
			}

			function showDivs(n) {
				var i;
				var x = document.getElementsByClassName("mySlides");
				if (n > x.length) {
					slideIndex = 1
				}
				if (n < 1) {
					slideIndex = x.length
				}
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				x[slideIndex - 1].style.display = "block";
			}
		</script>
		<!--Auto slideshow-->
		<script>
			var myIndex = 0;
			carousel();

			function carousel() {
				var i;
				var x = document.getElementsByClassName("mySlides");
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				myIndex++;
				if (myIndex > x.length) {
					myIndex = 1
				}
				x[myIndex - 1].style.display = "block";
				setTimeout(carousel, 2000); // Change image every 2 seconds
			}
		</script>
		<!--Click full display image-->
		<script>
			function onClick(element) {
				document.getElementById("img01").src = element.src;
				document.getElementById("modal01").style.display = "block";
			}
		</script>
	</body>
</html>
