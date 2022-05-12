<%-- 
    Document   : Cart
    Created on : May 7, 2022, 2:43:18 PM
    Author     : hoangduongngg
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <jsp:include page="Navbar.jsp"></jsp:include>
        
            <div class="shopping-cart">
                <div class="px-4 px-lg-0">

                    <div class="pb-5">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                    <!-- Shopping cart table -->
                                    <div class="table-responsive">
                                        <table class="table">
                                            <h3>${mess}</h3>
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="p-2 px-3 text-uppercase">Product</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Price</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Quantity</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase"> </div>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${listItem}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.getProduct().image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.getProduct().name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.price}$</strong></td>
                                                    <td class="align-middle">
                                                            <a href="cartIncDecQuantity?action=dec&ProductID=${o.getProduct().id}"><button class="btnSub">-</button></a> 
                                                            <strong>${o.quantity}</strong>
                                                            <a href="cartIncDecQuantity?action=inc&ProductID=${o.getProduct().id}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                    <td class="align-middle">
                                                        <a href="cartIncDecQuantity?action=Delete&ProductID=${o.getProduct().id}" class="text-dark">
                                                            <button type="button" class="btn btn-danger">Delete</button>
                                                        </a>
                                                    </td>
                                                </tr> 
                                            </c:forEach>
                                                <td class="align-middle">
                                                    <form action="payment" method="post">
                                                       <button type="submit" class="btn btn-danger">Payment</button>
                                                    </form>
                                                </td>
                                        </tbody>
                                    </table>
                                </div>
                                            
                                <!-- End -->
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
                                            
        <jsp:include page="Footer.jsp"></jsp:include>

    </body>

</html>
</html>
