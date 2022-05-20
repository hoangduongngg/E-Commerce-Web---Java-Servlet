<%-- 
    Document   : Left
    Created on : May 9, 2022, 4:38:21 PM
    Author     : hoangduongngg
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Category List-->
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-primary text-white text-uppercase" onclick="document.querySelector('.list-group').classList.toggle('active')"><i class="fa fa-list"></i> Categories</div>
                        <ul class="list-group category_block">
                            <c:forEach items="${listC}" var="o">
                                <li class="list-group-item text-white 
                                    ${cateTag == o.cid ? "active":""}"><!--Neu cateTag == cid thi hien mau nen la active , toan tu 3 ngoi-->
                                    <a href="category?cid=${o.cid}">${o.cname}</a>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                    
                    <!--Last Product-->
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase">Last product</div>
                        <div class="card-body">
                            <img class="img-fluid" src="${lastp.image}" />
                            <a href="detail?ProductID=${lastp.id}" class="card-title">${lastp.name}</a>
                            <p class="card-text">${lastp.title}</p>
                            <p class="bloc_left_price">${lastp.price} $</p>
                        </div>
                    </div>
                </div>
