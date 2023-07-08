<%-- 
    Document   : MyCart
    Created on : Jul 8, 2023, 11:04:38 AM
    Author     : Dell
--%>

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
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
   <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style>
.table>tbody>tr>td,
.table>tfoot>tr>td {
  vertical-align: middle;
}

@media screen and (max-width: 600px) {
  table#cart tbody td .form-control {
    width: 20%;
    display: inline !important;
  }
  .actions .btn {
    width: 36%;
    margin: 1.5em 0;
  }
  .actions .btn-info {
    float: left;
  }
  .actions .btn-danger {
    float: right;
  }
  table#cart thead {
    display: none;
  }
  table#cart tbody td {
    display: block;
    padding: .6rem;
    min-width: 320px;
  }
  table#cart tbody tr td:first-child {
    background: #333;
    color: #fff;
  }
  table#cart tbody td:before {
    content: attr(data-th);
    font-weight: bold;
    display: inline-block;
    width: 8rem;
  }
  table#cart tfoot td {
    display: block;
  }
  table#cart tfoot td .btn {
    display: block;
  }
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
</head>

    <body translate="no">
    <jsp:include page="Header.jsp"></jsp:include>
    <br>
    <div class="container">
      <table id="cart" class="table table-hover table-condensed">
        <thead>
          <tr>
            <th style="width:50%">Product</th>
            <th style="width:10%">Price</th>
            <th style="width:8%">Quantity</th>
            <th style="width:22%" class="text-center">Subtotal</th>
            <th style="width:10%"></th>
          </tr>
          <tr></tr>
        </thead>
        <tbody>
          <tr>
            <td data-th="Product">
              <div class="row">
                <div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive" /></div>
                <div class="col-sm-10">
                  <h4 class="nomargin">Product 1</h4>
                  <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                </div>
              </div>
            </td>
            <td data-th="Price">$1.99</td>
            <td data-th="Quantity">
              <input type="number" class="form-control text-center" value="1">
            </td>
            <td data-th="Subtotal" class="text-center">1.99</td>
            <td class="actions" data-th="">
              <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
              <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
            </td>
          </tr>
        </tbody>
        <tfoot>
          <tr class="visible-xs">
            <td class="text-center"><strong>Total 1.99</strong></td>
          </tr>
          <tr>
            <td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
            <td colspan="2" class="hidden-xs"></td>
            <td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
            <td><a href="#" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
          </tr>
        </tfoot>
      </table>
    </div>
    <br>
    <jsp:include page="Footer.jsp"></jsp:include> 
</body>
</html>

