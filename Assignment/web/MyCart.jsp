<%-- 
    Document   : MyCart
    Created on : Jul 8, 2023, 11:04:38 AM
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
          <th class="col-md-1">No</th>
          <th class="col-md-2">Image</th>
          <th class="col-md-2">Product Name</th>
          <th class="col-md-2">Quantity</th>
          <th class="col-md-1">Price</th>
          <th class="col-md-1">Discount</th>
          <th class="col-md-2">Subtotal</th>
          <th class="col-md-1">Action</th>
        </tr>
      </thead>
        
        
        
        <tbody>
        <c:set var="o" value="${requestScope.cart}"/>
        <c:set var="totalMoney" value="0"/>
        <c:set var="tt" value="0"/>
        <c:forEach items="${o.items}" var="i">
            <c:set var="tt" value="${tt + 1}"/>
            <c:set var="totalMoney" value="${totalMoney + i.item_price * i.item_quantity}"/>
            <tr>
              <td data-th="Price" class="col-md-1">${tt}</td>
              <td data-th="Product" class="col-md-2">
                <div class="row">
                  <div class="col-xs-12">
                    <img src="${i.product.imageURL}" alt="..." class="img-responsive" />
                  </div>
                </div>
              </td>
              <td class="col-md-2">
                <div class="col-xs-12">
                  <h4 class="nomargin">${i.product.name}</h4>
                </div>
              </td>
              <td data-th="Quantity" class="col-md-2">
                <a href="process?num=-1&id=${i.product.product_id}" class="btn btn-sm btn-info">-</a>
                ${i.item_quantity}
                <a href="process?num=1&id=${i.product.product_id}" class="btn btn-sm btn-info">+</a>
              </td>
              <td data-th="Price" class="col-md-1">${i.product.price}</td>
              <td data-th="Price" class="col-md-1">${i.product.discount}</td>
              <td data-th="Subtotal" class="col-md-">
                <fmt:formatNumber pattern="##.#" value="${i.item_price * i.item_quantity} " />
              </td>
              <td class="col-md-1 actions">
                  <form action="process" method="POST" id="myForm">
                    <input type="hidden" name="delete_id" class="btn btn-danger btn-sm" value="${i.product.product_id}"/>
                    <input type="submit"  onclick="confirmDelete(${i.product.product_id})" class="btn btn-danger btn-sm" value="Return Item" />
                </form>
              </td>
            </tr>
        </c:forEach>
        </tbody>
        
        
        
        <tfoot>
          <tr class="visible-xs">
            <td class="text-center"><strong>Total</strong></td>
          </tr>
          <tr>
            <td><a href="store" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
            <td colspan="2" class="hidden-xs"></td>
            <td colspan="2" class="hidden-xs"></td>
            <td colspan="1" class="hidden-xs"></td>
            <td class="hidden-xs text-center"><strong>Total: <fmt:formatNumber pattern="##.#" value="${totalMoney}" /></strong></td>
            <td><a href="checkout" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
          </tr>
        </tfoot>
      </table>
    </div>
    <br>
    <jsp:include page="Footer.jsp"></jsp:include> 
    
    <script type="text/javascript">
            function confirmDelete(id) {
                var a =document.getElementById("myForm").method = "POST";
                if (confirm("Xóa order id=" + id + "?")) {
                    
                  document.getElementById("myForm").submit();
                        
                }
            }
    </script>
</body>
</html>

