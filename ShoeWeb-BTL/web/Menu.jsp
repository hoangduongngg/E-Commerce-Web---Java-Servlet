<%-- 
    Document   : Menu
    Created on : May 9, 2022, 4:15:09 PM
    Author     : hoangduongngg
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Menu-->    
        <!--begin of menu-->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="home">Shoes Web</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <c:if test="${sessionScope.account.isSell == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Seller Manager</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.account.isAdmin == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="manager">Admin Manager</a>
                            </li>
                        </c:if>
                        
                        <!--Neu dang dang nhap thi hien Logout va Ten User-->
                        <c:if test="${sessionScope.account != null}">
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="home">Hello ${sessionScope.account.user} </a>
                            </li>-->
                        </c:if>
                        <!--Neu chua dang nhap thi hien Login-->
                        <c:if test="${sessionScope.account == null}">
                            <li class="nav-item">
                               <a class="nav-link" href="Login.jsp">Login</a>
                            </li>
                        </c:if>
                    </ul>

                    <form action="search" method="post" class="form-inline my-2 my-lg-0">
                        <!--Search-->
                        <div class="input-group input-group-sm">
                            <input value="${txtS}" name="txtSearch" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <!--Cart-->
                        <a class="btn btn-success btn-sm ml-3" href="cart">
                            <i class="fa fa-shopping-cart"></i> Cart
                            <!--<span class="badge badge-light">0</span>-->
                        </a>
                    </form>
                </div>
            </div>
        </nav>
        
        <!--Hello-->
        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">Save Up to 40%</h1>
                <p class="lead text-muted mb-0">Shop All Our New Markdowns!</p>
            </div>
        </section>
    </body>
</html>
