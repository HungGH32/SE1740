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
                <div class="align-self-center flex-grow-1">Edit order | #${order_ed} | Orderdate: ${order.orderdate}</div>
                <a href="manageorder" class="btn btn-danger">Back to Manage</a>
              </div>
            </div>

            <div class="card-body">
                <form action="updateorder" method="POST">
                <!-- main product data -->
                <div class="row">
                  <div class="col-md-8">
                    <div class="form-group row">
                      <label class="col-sm-3 col-form-label">User ID</label>
                      <div class="col-sm-5">
                          ${order.user_id}
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="name" class="col-sm-3 col-form-label"> Full Name ${order.user_id}</label>
                      <div class="col-sm-5">
                          ${order.fullname}
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="category" class="col-sm-3 col-form-label">Address</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" name="address" value="${order.address}"> 
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="brand" class="col-sm-3 col-form-label">Email</label>
                      <div class="col-sm-5">
                        ${order.email}
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="manufacturer_id" class="col-sm-3 col-form-label">Phone Number</label>
                      <div class="col-sm-5">
                          ${order.phonenumber} 
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="manufacturer_id" class="col-sm-3 col-form-label">Note</label>
                      <div class="col-sm-5">
                          <input type="text" class="form-control" name="note" value=" ${order.note}"> 
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="manufacturer_id" class="col-sm-3 col-form-label">Status</label>
                      <div class="col-sm-5">
                          <input type="hidden" class="form-control" name="order_id" value="${order_ed}">
                          <input type="text" class="form-control" name="status" value="${order.status}">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /main product data -->

<!--                 Attributes 
                <h4>Detail</h4>
                <hr/>
                <div class="row">
                  <div class="col-md-12">
                    <div class="form-group row">
                      <label for="attr_1" class="col-sm-2 col-form-label">Warranty</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="warranty"" value="" />
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="attr_1" class="col-sm-2 col-form-label">ImageURL1</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="imageURL1" value="" />
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="attr_2" class="col-sm-2 col-form-label">ImageURL2</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="imageURL2" value="" />
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="attr_3" class="col-sm-2 col-form-label">ImageURL3</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" name="imageURL3" value="" />
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="attr_3" class="col-sm-2 col-form-label">Description</label>
                      <div class="col-sm-10">
                        <textarea type="text" class="form-control" name="description"></textarea>
                      </div>
                    </div>
                  </div>
                </div>
                 /Attributes 
                <div class="row ">
                    <div class="col-md-4 text-center">
                        
                        <img src="${info.imageURL1}" class="img-thumbnail img-fluid i" width="259.58px" height="259.58">
                  </div>
                  <div class="col-md-4 text-center">
                    <img src="${info.imageURL2}" class="img-thumbnail img-fluid" width="259.58px" height="259.58">
                  </div>
                  <div class="col-md-4 text-center">
                    <img src="${info.imageURL3}" class="img-thumbnail img-fluid" width="259.58px" height="259.58">
                  </div>
                </div>-->
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
