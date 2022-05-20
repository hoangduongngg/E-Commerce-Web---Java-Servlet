<%-- 
    Document   : bill
    Created on : May 13, 2022, 9:58:40 AM
    Author     : khanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>

        <div class="container">
            <div class="grid fix-wide" style="padding-top: 45px">
                <div class="container_header">
                    <span class="container_header-text" >Quản lý lịch sử mua hàng</span>
                </div>
                <a href="home" class="btn btn-success">Shoes web</a>
            </div>

            <div class="grid fix-wide">
                <table class="table-bill">
                    <thead >
                        <tr style="background-color: rgba(31, 163, 101, 0.4);">
                            <th style="text-align: center; width: 150px"  scope="col" class="bill-information">Tài khoản</th>
                            <th style="text-align: center; width: 150px"  scope="col" class="bill-information">Sản phẩm</th>
                            <th  style="text-align: center; width: 150px"  scope="col" class="bill-information">Số lượng</th>
                            <th style="text-align: center; width: 150px"  scope="col" class="bill-information">Tổng tiền</th>
                            <th style="text-align: center; width: 150px"  scope="col" class="bill-order-date">Ngày đặt</th>
                        </tr>
                    </thead>
                    <c:forEach items="${listHistorys}" var="i">
                        <tbody class="table-bill-title" >
                            <tr class="bill-information-detail" style="width: ">
                                <td style="text-align: center; width: 150px" >${i.user}</td>
                                <td style="text-align: center; width: 150px" >${i.product}</td>
                                <td style="text-align: center; width: 150px" >${i.quantity}</td>
                                <td style="text-align: center; width: 150px" >${i.totalPrice}</td>
                                <td style="text-align: center; width: 150px" >${i.date}</td>
                            </tr>
                        </tbody>
                    </c:forEach>

                </table>
            </div>
        </div>
        <!-- End container -->

    </body>
</html>

