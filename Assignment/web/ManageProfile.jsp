<%-- 
    Document   : AccountManage
    Created on : Jul 7, 2023, 9:20:08 PM
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
                
                <!-- My stlylesheet -->
                <link type="text/css" rel="stylesheet" href="front-end/css/mystyle.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
            <jsp:include page="Header.jsp"></jsp:include>
            <div class="container rounded bg-white mt-5 mb-5">
                <div class="row">
                    <div class="col-md-2 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span> </span></div>
                    </div>
                    <div class="col-md-5 border-right">
                        <div class="p-3 py-5">
                            <form action="manageprofile" method="POST">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <br>
                                    <h4 class="text-center">Profile Settings</h4>
                                    <br>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-12"><label class="labels">Full Name</label><input type="text" class="form-control" name="fullname" value="${user.fullname}"></div>
                                    <div class="col-md-12"><label class="labels">Full Name</label><input type="hidden" class="form-control" name="user_id" value="${user.user_id}"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-12"><label class="labels">Phone Number</label><input type="text" class="form-control" name="phonenumber" placeholder="enter your phone number" value="${user.phonenumber}"></div>
                                    <div class="col-md-12"><label class="labels">Address </label><input type="text" class="form-control" name="address" placeholder="enter your address" value="${user.address}"></div>
                                    <div class="col-md-12"><label class="labels">Country</label><input type="text" class="form-control" placeholder="your country" name="country" value="${user.country}"></div>
                                    <div class="col-md-12"><label class="labels">DOB</label><input type="date" class="form-control" name="date" value="${user.DOB}"></div>
                                    <div class="col-md-12"><label class="labels">Email </label><input type="text" class="form-control" name="email" placeholder="enter email" value="${account.email}"></div>
                                </div>
                                <br>
                                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                                <br>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-5 border-right">
                        <div class="p-3 py-5">
                            <form action="newpassword" method="post" name="passwordForm" onsubmit="return validateForm()">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <br>
                                <h4 class="text-center">Reset Password</h4>
                                <br>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12"><label class="labels">Current Password</label><input type="password" class="form-control" name="password" placeholder="Enter current password" value=""></div>
                                <div class="col-md-12"><label class="labels">New Password</label><input type="password" class="form-control" name="newpassword" placeholder="Enter new password" value=""></div>
                                <div class="col-md-12"><label class="labels">Confirm Password</label><input type="password" class="form-control" name="confirm" placeholder="Confirm new password" value=""></div>
                            </div>
                            <br>
                            <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save New Password</button></div>
                            <br>
                            </form>
                        </div>
                    </div>
                </div>
                
            </div>
            </div>
            </div>    

            <jsp:include page="Footer.jsp"></jsp:include>
            <script>
            function validateForm() {
                var currentPassword = document.forms["passwordForm"]["password"].value;
                var newPassword = document.forms["passwordForm"]["newpassword"].value;
                var confirmPassword = document.forms["passwordForm"]["confirm"].value;

                if (currentPassword !== "${account.password}") {
                    alert("Mật khẩu hiện tại không đúng");
                    return false;
                }

                if (newPassword !== confirmPassword) {
                    alert("Mật khẩu mới và xác nhận mật khẩu không khớp");
                    return false;
                }
            }
        </script>
		<!-- jQuery Plugins -->
		<script src="front-end/js/jquery.min.js"></script>
		<script src="front-end/js/bootstrap.min.js"></script>
		<script src="front-end/js/slick.min.js"></script>
		<script src="front-end/js/nouislider.min.js"></script>
		<script src="front-end/js/jquery.zoom.min.js"></script>
		<script src="front-end/js/main.js"></script>

	</body>
</html>

