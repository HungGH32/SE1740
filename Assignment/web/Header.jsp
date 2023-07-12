<%-- 
    Document   : Menu
    Created on : Jul 5, 2023, 8:11:36 PM
    Author     : Dell
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
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
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-envelope-o"></i> hungtdhe171201@fpt.edu.vn</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
					</ul>
					<ul class="header-links pull-right">
                                                <c:if test="${sessionScope.acc.role == 1}">
                                                    <li><a href="manageproduct"><i class="fa fa-gear"></i> Manage Product</a></li>
                                                    <li><a href="manageorder"><i class="fa fa-gear"></i> Manage Order</a></li>
                                                    <li><a href="manageuser"><i class="fa fa-gear"></i> Manage Account</a></li>
                                                </c:if>
                                                <c:if test="${sessionScope.acc.role == 0}">
                                                    <li><a href="AccountManage.jsp"><i class="fa fa-gear"></i> Manage Account</a></li>
                                                </c:if>
                                                <c:choose>
                                                    <c:when test="${sessionScope.acc != null}">
                                                        <li><a href="logout"><i class="fa fa-user-o"></i> Sign out</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="#"><i class="fa fa-dollar"></i> USD</a></li>
                                                        <li><a href="Login.jsp"><i class="fa fa-user-o"></i> Sign in / Sign up</a></li>
                                                    </c:otherwise>
                                                </c:choose>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="store" class="logo">
                                                                    <img src="https://th.bing.com/th/id/OIP.S7VgzvIFUvh6IK2QkyWYXgHaHa?w=194&h=194&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="" class="img-fluid" style="max-width: 70px; max-height: 70px;">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
                                                    <div class="header-search">
                                                        <form action="search" method="get" >
                                                            <input class="input" placeholder="Search here" name="txt" value="${searchHistory}">
                                                            <button class="search-btn" style="border-radius: 0%">Search</button>
                                                        </form>
                                                    </div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
<!--								 Wishlist 
								<div>
									<a href="#">
										<i class="fa fa-heart-o"></i>
										<span>Your Wishlist</span>
										<div class="qty">2</div>
									</a>
								</div>
								 /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
                                                                    <c:choose>
                                                                        <c:when test="${sessionScope.acc != null}">
                                                                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										<div class="qty">${listItemSize}</div>
                                                                            </a>
                                                                            <div class="cart-dropdown">
                                                                                <!--ITEM-->
                                                                                <c:set var="o" value="${requestScope.cart}"/>
                                                                                <c:set var="totalMoney" value="0"/>
                                                                                <c:forEach items="${o.items}" var="i">
                                                                                    <c:set var="totalMoney" value="${totalMoney + i.item_price * i.item_quantity}"/>
                                                                                    <div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="${i.product.imageURL}" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">${i.product.name}</a></h3>
													<h4 class="product-price"><span class="qty">${i.item_quantity}x</span> <fmt:formatNumber pattern="##.#" value="${i.item_price * i.item_quantity}"/>$</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
                                                                                    </div>
                                                                                </c:forEach>
                                                                                <!--ITEM-->
										<div class="cart-summary">
											<h5>    TOTAL: <fmt:formatNumber pattern="##.#" value="${totalMoney}"/></h5>
										</div>
										<div class="cart-btns">
											<a href="showcart">Manage Cart</a>
											<a href="checkout">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
                                                                            </div>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <a href="Login.jsp">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
                                                                            </a>
                                                                        </c:otherwise>
                                                                    </c:choose>
								</div>
								<!-- /Cart -->

							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

<!--		 NAVIGATION 
		<nav id="navigation">
			 container 
			<div class="container">
				 responsive-nav 
				<div id="responsive-nav">
					 NAV 
					<ul class="main-nav nav navbar-nav">
						<li><a href="#">Home</a></li>
                                                <li><a href="#">Our Store</a></li>
						<li><a href="#">Hot Deals</a></li>
                                                <li><a href="#">New Arrivals</a></li>
						<li><a href="#">About Us</a></li>
                                                <li><a href="#">Contact & Support</a></li>
					</ul>
					 /NAV 
				</div>
				 /responsive-nav 
			</div>
			 /container 
		</nav>
		 /NAVIGATION -->

		<!-- jQuery Plugins -->
		<script src="front-end/js/jquery.min.js"></script>
		<script src="front-end/js/bootstrap.min.js"></script>
		<script src="front-end/js/slick.min.js"></script>
		<script src="front-end/js/nouislider.min.js"></script>
		<script src="front-end/js/jquery.zoom.min.js"></script>
		<script src="front-end/js/main.js"></script>

	</body>
</html>
