<%-- 
    Document   : CheckOut
    Created on : Jul 9, 2023, 4:28:24 PM
    Author     : Dell
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
                                    <form action="setorder" action="POST">
					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Billing address</h3>
                                                                <input class="input" type="hidden" name="user_id" value="${account.account_id}">
							</div>
							<div class="form-group">
								<input class="input" type="text" name="fullname" placeholder="Full Name">
							</div>
                                                        <div class="form-group">
								<input class="input" type="text" name="city" placeholder="City">
							</div>
                                                        <div class="form-group">
								<input class="input" type="text" name="address" placeholder="Address">
							</div>
							<div class="form-group">
								<input class="input" type="email" name="email" placeholder="Email">
							</div>
                                                        
							<div class="form-group">
								<input class="input" type="tel" name="phonenumber" placeholder="PhoneNumber">
							</div>
						</div>
						<!-- /Billing Details -->

						<!-- Order notes -->
						<div class="order-notes">
                                                    <textarea name="order_note" class="input" placeholder="Order Notes"></textarea>
						</div>
						<!-- /Order notes -->
					</div>
                                        
                                        <c:set var="o" value="${requestScope.cart}"/>
                                        <c:set var="totalMoney" value="0"/>
					<!-- Order Details -->
					<div class="col-md-5 order-details">
						<div class="section-title text-center">
							<h3 class="title">Your Order</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>PRODUCT</strong></div>
								<div><strong>TOTAL</strong></div>
							</div>
                                                        
							<div class="order-products">
                                                            <c:forEach items="${o.items}" var="i">
                                                                <c:set var="totalMoney" value="${totalMoney + i.item_price * i.item_quantity}"/>
								<div class="order-col">
									<div>${i.item_quantity}x ${i.product.name}</div>
									<div><fmt:formatNumber pattern="##.#" value="${i.item_price * i.item_quantity} " />$</div>
								</div>
                                                            </c:forEach>
							</div>
							<div class="order-col">
								<div>Shiping</div>
								<div><strong>FREE</strong></div>
							</div>
							<div class="order-col">
								<div><strong>TOTAL</strong></div>
								<div><strong class="order-total"><fmt:formatNumber pattern="##.#" value="${totalMoney}" />$</strong></div>
<!--TOTAL MONEY-->                                              <input type="hidden" name="total_money" value="${totalMoney}"/>
                                                        </div>
						</div>
						<div class="payment-method">
							<div class="input-radio">
<!--STATUS-->                                                   <input type="radio" name="status" id="payment-1" value="1">
								<label for="payment-1">
									<span></span>
									Cash Payment
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
							<div class="input-radio">
								<input type="radio" name="status" id="payment-2" value="2">
								<label for="payment-2">
									<span></span>
									Bank Transfer
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
							<div class="input-radio">
								<input type="radio" name="status" id="payment-3" value="3">
								<label for="payment-3">
									<span></span>
									QR Pay 
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								</div>
							</div>
						</div>
                                                <input type="submit" class="primary-btn order-submit" value="Place order" />
					</div>
					<!-- /Order Details -->
                                    </form>
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
