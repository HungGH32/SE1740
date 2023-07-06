<%-- 
    Document   : Store
    Created on : Jul 3, 2023, 10:05:11 PM
    Author     : Dell
--%>
 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="front-end/css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="front-end/css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="front-end/css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="front-end/css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="front-end/css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="front-end/css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
            <jsp:include page="Header.jsp"></jsp:include>
                <!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- ASIDE -->
					<div id="aside" class="col-md-3">
						<!-- aside Widget -->
						<div class="aside">
                                                    <div>
                                                        <a href="store"><h3 class="aside-title" style="color: #D10024">All Categories</h3></a>
                                                    </div>
							<div class="checkbox-filter">
                                                            <c:choose>
                                                                <c:when test="${not empty category_clicked}">
                                                                    <c:forEach items="${listCategory}" var="o">
                                                                        <c:if test="${o.category_id == category_clicked}">
                                                                            <div class="input-checkbox">
                                                                                <a href="category?cid=${o.category_id}">${o.category_name}</a>
                                                                            </div>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <c:forEach items="${listCategory}" var="o">
                                                                        <div class="input-checkbox">
                                                                            <a href="category?cid=${o.category_id}">${o.category_name}</a>
                                                                        </div>
                                                                    </c:forEach>
                                                                </c:otherwise>
                                                            </c:choose>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Price</h3>
							<div class="price-filter">
								<div id="price-slider"></div>
								<div class="input-number price-min">
									<input id="price-min" type="number">
									<span class="qty-up">+</span>
									<span class="qty-down">-</span>
								</div>
								<span>-</span>
								<div class="input-number price-max">
									<input id="price-max" type="number">
									<span class="qty-up">+</span>
									<span class="qty-down">-</span>
								</div>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Brand</h3>
							<div class="checkbox-filter">
                                                            <c:forEach items="${listBrand}" var="o">
                                                                <div class="input-checkbox">
									<input type="checkbox" id="brand-${o.brand_id}">
									<label for="brand-${o.brand_id}">
										<span></span>
										${o.brand_name}
										<small>(578)</small>
									</label>
								</div>
                                                            </c:forEach>
							</div>
						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">New Arrival</h3>
                                                        <c:forEach items="${top3_new}" var="o">
                                                            <div class="product-widget">
								<div class="product-img">
									<img src="${o.imageURL}" alt="">
								</div>
								<div class="product-body">
									<h3 class="product-name"><a href="#">${o.name}</a></h3>
									<h4 class="product-price">
                                                                            <c:choose>
                                                                                <c:when test="${o.discount != 0}">
                                                                                    <script>
                                                                                        var roundedPrice = Math.round(${o.price * o.discount} * 100) / 100;
                                                                                        document.write(roundedPrice + "$");
                                                                                    </script>
                                                                                    <del class="product-old-price">${o.price} $</del>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    ${o.price}$
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        </h4>
								</div>
							</div>
                                                        </c:forEach>
						</div>
						<!-- /aside Widget -->
					</div>
					<!-- /ASIDE -->

					<!-- STORE -->
					<div id="store" class="col-md-9">
						<!-- store top filter -->
						<div class="store-filter clearfix ">
							<div class="store-sort">
								<label>
									Sort By:
									<select class="input-select">
										<option value="0">PRICE - LOW TO HIGH</option>
										<option value="1">PRICE - HIGH TO LOW</option>
									</select>
								</label>
							</div>
						</div>
						<!-- /store top filter -->

						<!-- store products -->
						<div class="row">
                                                    <c:forEach items = "${listProduct}" var="o" varStatus="status">
                                                        <div class="col-md-4 col-xs-6">
									<div class="product">
										<div class="product-img">
											<img src="${o.imageURL}" alt="">
											<div class="product-label">
                                                                                            <c:if test="${o.discount != 0}">
                                                                                                <span class="sale">
                                                                                                    <script>
                                                                                                        var roundedPrice = Math.round(${o.discount} *100);
                                                                                                        document.write(roundedPrice + "%");
                                                                                                    </script>
                                                                                                </span>
                                                                                                <span class="new">SALE</span>
                                                                                            </c:if>
											</div>
										</div>
										<div class="product-body">
                                                                                        <h3 class="product-name"><a href="detail?pid=${o.product_id}">${o.name}</a></h3>
											<h4 class="product-price">
                                                                                            <c:choose>
                                                                                                <c:when test="${o.discount != 0}">
                                                                                                    <script>
                                                                                                        var roundedPrice = Math.round(${o.price * o.discount} * 100) / 100;
                                                                                                        document.write(roundedPrice + "$");
                                                                                                    </script>
                                                                                                    <del class="product-old-price">${o.price} $</del>
                                                                                                </c:when>
                                                                                                <c:otherwise>
                                                                                                    ${o.price}$
                                                                                                </c:otherwise>
                                                                                            </c:choose>
                                                                                            
                                                                                        
                                                                                        </h4>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
										</div>
									</div>
                                                        </div>
                                                        <c:if test="${status.count % 3 == 0}">
                                                            </div>
                                                            <div class="row">
                                                        </c:if>
                                                    </c:forEach>
						</div>
						<!-- /store products -->
                                                
						<!-- store bottom filter -->
						<div class="store-filter clearfix">
							<ul class="store-pagination">	
                                                            <c:forEach begin="1" end="${lastPage}" var="i">
                                                                <li <c:if test="${i == currentPage}">class="active"</c:if>><a href="store?page=${i}">${i}</a></li>
                                                            </c:forEach>
							</ul>
						</div>
						<!-- /store bottom filter -->
					</div>
					<!-- /STORE -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<jsp:include page="Footer.jsp"></jsp:include>

		<!-- jQuery Plugins -->
		<script src="front-end/js/jquery.min.js"></script>
		<script src="front-end/js/bootstrap.min.js"></script>
		<script src="front-end/js/slick.min.js"></script>
		<script src="front-end/js/nouislider.min.js"></script>
		<script src="front-end/js/jquery.zoom.min.js"></script>
		<script src="front-end/js/main.js"></script>

	</body>
</html>

