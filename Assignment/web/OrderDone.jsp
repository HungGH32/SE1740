<%-- 
    Document   : OrderDone
    Created on : Jul 9, 2023, 10:31:50 PM
    Author     : Dell
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
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

    <!-- My stlylesheet -->
    <link type="text/css" rel="stylesheet" href="front-end/css/mystyle.css"/>


  <title>My Cart</title>
  <link rel="canonical" href="https://codepen.io/mohsin3333/pen/GRqzRoP" />
  
  
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
   <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style>
.order-status {
  text-align: center;
  max-width: 600px;
  margin: 10px auto;
  border: 1px solid #eee;
  font-family: "Arial";
}
.order-status .top-part {
  border-bottom: 1px solid #eee;
}
.order-status .top-part i {
  font-size: 50px;
  padding-top: 15px;
}
.order-status.order-success .top-part {
  color: #2ca954;
}
.order-status.order-error .top-part {
  color: #ff0000;
}
.order-status .top-part h3 {
  margin-bottom: 0;
  font-weight: bold;
  margin-bottom: 15px;
}
.order-status .top-part small {
  font-size: 14px;
  font-weight: normal;
  display: block;
  color: #000;
  background: #f1f3f6;
  padding: 20px 40px;
}
.order-status .top-part h3 span {
  display: block;
  margin-top: 5px;
  color: #000;
  font-size: 16px;
  font-weight: normal;
}
.order-status ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
}
.order-status ul li {
  font-family: "Arial";
  display: flex;
  justify-content: space-between;
  padding: 10px;
  text-transform: capitalize;
  border-bottom: 1px solid #eee;
}
.order-status ul li:last-child {
  border: none;
}
.order-status ul li div {
  font-size: 14px;
  font-weight: normal;
  color: #444;
}
.order-status ul li div:last-child {
  font-weight: bold;
  color: #000;
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

 
</head>
<body translate="no">
    <jsp:include page="Header.jsp"></jsp:include>
  <div class="order-status order-success">
  <div class="top-part">
    <i class="far fa-check-circle"></i>
    <h3>
       Payment Successful
       <span><a href="store" class="btn btn-success ">Back to home</a></span>
    </h3>
      <small>
        Thank you very much and reserving this vehicle one of our sales representative will be in touch shortly. Your reserved details are below
      </small>
  </div>
  <ul>
<!--    <li>
      <div>Payee Name</div>
      <div>John Doe</div>
    </li>
    <li>
      <div>Car Make:</div>
      <div>Audi</div>
    </li>
    <li>
      <div>Car Modal:</div>
      <div>Audi</div>
    </li>
    <li>
      <div>Car Make:</div>
      <div>A3 Sportsback</div>
    </li>
    <li>
      <div>Payment:</div>
      <div>$200</div>
    </li>
    <li>
      <div>Created Date:</div>
      <div>11-11-2020 22:22:30</div>
    </li>
    <li>
      <div>Status:</div>
      <div>completed</div>
    </li>-->
  </ul>
</div>
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
