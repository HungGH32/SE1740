<%-- 
    Document   : EditProduct
    Created on : Jul 7, 2023, 11:01:36 AM
    Author     : Dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link rel="canonical" href="https://codepen.io/davin4u/pen/PoZxpwR" />
  
  
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>


        <script>
        window.console = window.console || function(t) {};
        </script>
    </head>

    <body translate="no">
      <div classs="container">
      <div class="row justify-content-center">
        <div class="col-md-10">
          <div class="card">
            <div class="card-header">
              <div class="d-flex">
                <div class="align-self-center flex-grow-1">Edit Account | #${account_a.account_id} </div>
                <a href="manageorder" class="btn btn-danger">Back to Manage</a>
              </div>
            </div>

            <div class="card-body">
                <form action="editaccount" method="POST">
                <!-- main product data -->
                <div class="row">
                  <div class="col-md-8">
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">User ID</label>
                      <div class="col-sm-5">
                          <input type="hidden" class="form-control" name="account_id" value=" ${account_a.account_id}">
                          ${account_a.account_id}
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="name" class="col-sm-3 col-form-label"> Username </label>
                      <div class="col-sm-5">
                          <input type="text" class="form-control" name="username" value=" ${account_a.username}">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="category" class="col-sm-3 col-form-label">Password</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" name="password" value=" ${account_a.password}"> 
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="brand" class="col-sm-3 col-form-label">Email</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" name="email" value=" ${account_a.email}"> 
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="manufacturer_id" class="col-sm-3 col-form-label">ROLE</label>
                      <div class="col-sm-5">
                          <input type="text" class="form-control" name="role" value=" ${account_a.role}"> 
                      </div>
                    </div>
                  </div>
                </div>
                  <br>
                <div class="align-self-center text-center">
                    <input type="submit" class="btn btn-success" value="Save" style="width: 200px; height: 50px;">
                </div>
                  <br>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

      <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js'></script>


    </body>
</html>
