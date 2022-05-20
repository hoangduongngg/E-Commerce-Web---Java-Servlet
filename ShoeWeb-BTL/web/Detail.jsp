<%-- 
    Document   : Detail
    Created on : May 7, 2022, 2:44:06 PM
    Author     : hoangduongngg
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
            .list-group{
                display: none!important;
            }
            .list-group.active{
                display: block!important;
            }
        </style>
    </head>
    <body>
        
            <jsp:include page="Menu.jsp"></jsp:include>
        
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
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

                        
                    </div>
                <div class="col-sm-9">
<!--                    <div class="container">
                        <div class="card">-->
                            <div class="row">
                                <aside class="col-sm-5 border-right">
                                    <article class="gallery-wrap"> 
                                        <div class="img-big-wrap">
                                            <div> <a href="#"><img src="${p.image}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                            <div class="item-gallery"> <img src="${p.image}"> </div>
                                            <div class="item-gallery"> <img src="${p.image}"> </div>
                                            <div class="item-gallery"> <img src="${p.image}"> </div>
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${p.name}</h3>

                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="currency">US $</span><span class="num">${p.price}</span>
                                            </span> 
                                            <!--<span>/per kg</span>--> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Description</dt>
                                            <dd><p>${p.description} </p></dd>
                                        </dl>

                                        <hr>
                                        <a href="addtoCart?ProductID=${p.id}" class="btn btn-sm btn-primary text-uppercase"> Buy now </a>
                                        <a href="addtoCart?ProductID=${p.id}" class="btn btn-sm btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i> Add to cart </a>
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            <!--</div>  row.//--> 
                        <!--</div>  card.//--> 
                        
                        
                    </div>
                </div>
            </div>
        </div>
                <jsp:include page="Footer.jsp"></jsp:include>

    </body>
</html>