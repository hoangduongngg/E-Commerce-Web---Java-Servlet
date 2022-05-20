<%-- 
    Document   : Payment
    Created on : May 11, 2022, 10:56:59 PM
    Author     : hoangduongngg
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
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
                                                            <strong>${o.quantity}</strong>
                                                    </td>
                                                    
                                                </tr> 
                                            </c:forEach>
                                                
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
           
                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <!--Voucher-->
<!--                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                                <div class="p-4">
                                    <div class="input-group mb-4 border rounded-pill p-2">
                                        <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                        <div class="input-group-append border-0">
                                            <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                                        </div>
                                    </div>
                                </div>
                            </div>-->

                            <!--Customer-->
                            <c:if test="${sessionScope.account != null}">
                                <div class="col-lg-6">
                                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Information</div>
                                    <form action="getinfo" class="p-4">
                                        <div class="input-group mb-4 border rounded-pill p-2">
                                            <input value="${sessionScope.account.name}" type="text" placeholder="Your name" aria-describedby="button-addon3" class="form-control border-0">
                                        </div>
                                        <div class="input-group mb-4 border rounded-pill p-2">
                                            <input value="${sessionScope.account.phone}" type="text" placeholder="Your phone" aria-describedby="button-addon3" class="form-control border-0">
                                        </div>
                                        <div class="input-group mb-4 border rounded-pill p-2">
                                            <input value="${sessionScope.account.address}" type="text" placeholder="Your Address" aria-describedby="button-addon3" class="form-control border-0">
                                        </div>

                                    </form>
                                </div>
                            </c:if>
                            
                            
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>${totalPrice}$</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>${VATPrice}$</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                            <h5 class="font-weight-bold">${totalPayment}$</h5>
                                        </li>
                                    </ul><a href="buy" class="btn btn-dark rounded-pill py-2 btn-block">Confirm</a>
                                    <br>
                                    <!--</ul><a href="vnpay_index.jsp" class="btn btn-dark rounded-pill py-2 btn-block">Payment Online</a>-->
                                </div>
                            </div>
                        </div>
        <jsp:include page="Footer.jsp"></jsp:include>

    </body>
</html>
