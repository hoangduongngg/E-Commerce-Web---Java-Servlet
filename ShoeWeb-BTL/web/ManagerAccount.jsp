<%-- 
    Document   : ManagerAccount
    Created on : May 11, 2022, 9:57:51 AM
    Author     : khanh
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager User</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page = "Navbar.jsp"></jsp:include>

        <div class="container">
            <div class="row">
                <h1>List Account</h1>
            </div>
            <!--Nút thêm mới user-->
            <div class="row">
                <div class="col-lg-3">
                    <a href="EditAccount?action=insert" class="btn btn-primary btn-sm mb-3 text-light">Add Account</a>
                    
                </div>
            </div>
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Id</th>
                        <th>UserName</th>
                        <th>Password</th>
                        <th>IsSell</th>
                        <th>IsAdmin</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${listAccount}" var="account">
                        <tr>
                            <td>${account.id}</td>
                            <td>${account.user}</td>
                            <td>${account.pass}</td>
                            <td>
                                <c:if test="${account.isSell == 1}">
                                    True
                                </c:if>
                                <c:if test="${account.isSell == 0}">
                                    False
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${account.isAdmin == 1}">
                                    True
                                </c:if>
                                <c:if test="${account.isAdmin == 0}">
                                    False
                                </c:if>
                            </td>
                            <td>
                                <a href="EditAccount?action=edit&id=${account.id}" class="btn btn-primary text-light">Update</a>
                                <a href="DeleteAccount?id=${account.id}" class="btn btn-danger text-light">Delete</a>
                            </td>
                        </tr>

                    </c:forEach>

                </tbody>
            </table>
        </div>
    </body>
</html>