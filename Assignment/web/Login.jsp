<%-- 
    Document   : Login
    Created on : Jul 5, 2023, 9:15:26 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>            
                <!-- Login -->
                <link type="text/css" rel="stylesheet" href="front-end/css/login.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
		<br>
                <br>
                    <div class="cont">
                        <div class="form sign-in">
                            <form action="login" method="post">
                                <h2>Welcome</h2>
                                <label>
                                    <span>Username</span>
                                    <input type="text" name="user">
                                </label>
                                <label>
                                    <span>Password</span>
                                    <input type="password" name="pass">
                                </label>
                                <p class="forgot-pass">Forgot password?</p>
                                <button type="submit" class="submit">Sign In</button>
                                <p id="error-message" class="error-message"></p>
                            </form>
                        </div>
                        <div class="sub-cont">
                            <div class="img">
                                <div class="img__text m--up">

                                    <h3 style="color: white">Don't have an account? Please Sign up!</h3>
                                </div>
                                <div class="img__text m--in">

                                    <h3 style="color: white">If you already has an account, just sign in.</h3>
                                </div>
                                <div class="img__btn">
                                    <span class="m--up">Sign Up</span>
                                    <span class="m--in">Sign In</span>
                                </div>
                            </div>
                            <div class="form sign-up">
                                <form action="signup" method="post">
                                    <h2>Create your Account</h2>
                                    <label>
                                        <span>Username</span>
                                        <input name="user" type="text" />
                                    </label>
                                    <label>
                                        <span>Email</span>
                                        <input name="email" type="email" />
                                    </label>
                                    <label>
                                        <span>Password</span>
                                        <input name="pass" type="password" />
                                    </label>
                                    <label>
                                        <span>Re-enter password</span>
                                        <input name="re_pass" type="password" />
                                    </label>
                                    <button type="submit" class="submit">Sign Up</button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <script>
                        document.querySelector('.img__btn').addEventListener('click', function() {
                            document.querySelector('.cont').classList.toggle('s--signup');
                        });
                        
                    </script>
                    <script>
                        // Kiểm tra nếu có thông báo lỗi từ server
                        var errorMessage = '<%= request.getAttribute("mess") %>';
                        var not_Match = '<%= request.getAttribute("notMatch") %>';
                        var existAccount = '<%= request.getAttribute("existAccount") %>';
                        var createDone = '<%= request.getAttribute("createDone") %>';
                        if (errorMessage && errorMessage !== 'null') {
                            alert(errorMessage);
                        }
                        if (existAccount && existAccount !== 'null') {
                            alert(existAccount);
                        }
                        if (not_Match && not_Match !== 'null') {
                            alert(not_Match);
                        }
                        if (createDone && createDone !== 'null') {
                            alert(createDone);
                        }
                    </script>
	</body>
</html>

