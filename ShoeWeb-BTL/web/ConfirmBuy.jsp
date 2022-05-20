<%-- 
    Document   : ConfirmBuy
    Created on : May 12, 2022, 8:57:36 AM
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
    <section class="jumbotron text-center">
                <div class="container">
                    <h1 class="jumbotron-heading">Confirm!</h1>
                    <!--<a href="home" class="lead text-muted mb-0">More Shoe.</a>-->
                    </ul><a target = "_ blank"  href="http://sandbox.vnpayment.vn/tryitnow/Home/CreateOrder" class="btn btn-dark rounded-pill py-2 btn-block">Payment Online</a>
                </div>
            </section>
        <jsp:include page="Footer.jsp"></jsp:include>

    </body>
</html>

