<%-- 
    Document   : Home
    Created on : May 7, 2022, 2:07:29 PM
    Author     : hoangduongngg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .list-group{
                display: none!important;
            }
            .list-group.active{
                display: block!important;
            }
        </style>
    </head>
    <body>


        <jsp:include page = "Menu.jsp"></jsp:include>


            <div class="container">
                <div class="row">
                    <div class="col-sm-3">

                    <jsp:include page="Left.jsp"></jsp:include>    

                        <!--Product List-->
                        <div class="col-sm-9">
                            <div class="row">
                            <c:forEach items="${listP}" var="o">
                                <div class="col-12 col-md-6 col-lg-4">
                                    <div class="card">
                                        <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                        <c:if test="${o.calDate()<=30}">
                                            <a href="">Hàng mới về</a>
                                        </c:if>
                                        <div class="card-body">
                                            <h4 class="card-title show_txt">
                                                <a href="detail?ProductID=${o.id}" title="View Product">${o.name}</a>
                                            </h4>
                                            <p class="card-text show_txt">${o.title}</p>
                                            <div class="row">
                                                <div class="col">
                                                    <p>${o.price} $</p>
                                                    <!--check con hang-->
                                                    <c:if test="${o.sell_ID>0}">
                                                        <p>${o.sell_ID}</p>
                                                    </c:if> 
                                                    <c:if test="${o.sell_ID<=0}">
                                                        <p style="color: red;">Het hang</p>
                                                    </c:if>
                                                </div>
                                                <div class="col">
                                                    <a href="addtoCart?ProductID=${o.id}" class="btn btn-success btn-block">Add to cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                </div>
            </div>

            <jsp:include page="Footer.jsp"></jsp:include>
            <div class="zalo-chat-widget" data-oaid="4477228412300966908" data-welcome-message="Rất vui khi được hỗ trợ bạn!" data-autopopup="0" data-width="" data-height=""></div>

            <script src="https://sp.zalo.me/plugins/sdk.js"></script>
    </body>
</html>


