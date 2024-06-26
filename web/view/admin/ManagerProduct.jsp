<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Product Page</title>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
            />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="view/admin/css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="view/admin/css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="view/admin/css/templatemo-style.css">
        <style>
            .tm-product-name a {
                color: #ffffff;
            }
            .tm-product-name a:hover {
                color: goldenrod;
                text-decoration: underline;
            }
        </style>
    </head>

    <body id="reportsPage">
        <jsp:include page="AdminInclude/AdminHeadInclude.jsp"></jsp:include>
            <div class="container mt-5">
                <h2 class="tm-block-title">MANAGE PRODUCT</h2>
                 <form style="margin-left: 10px; margin-bottom: 20px;" action="AdminServlet" method="get">
                    <input style="display: none" name="mode" type="text" value="search">
                    <div class="row">
                        <input name="text" type="text" placeholder="Search here..." value="${value}">
                        <button class="btn btn-primary" type="submit">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                    </div>
                 </form>          
                <div class="row tm-content-row">
                    <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
                        <ul class="nav nav-tabs nav-fill">
                            <li class="nav-item">
                                <a ${nav==1?"class='nav-link active'":"class='nav-link'"}  href="manage?mode=productManage">Enabled Products</a>
                            </li>
                            <li class="nav-item">
                                <a ${nav==2?"class='nav-link active'":"class='nav-link'"} href="manage?mode=disableProduct">Disabled Products</a>
                            </li>
                        </ul>     
                        <div class="tm-bg-primary-dark tm-block-products">
                            <div class="tm-product-table-container">
                                <table class="table table-hover tm-table-small tm-product-table">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">PRODUCT </th>
                                            <th scope="col"></th>
                                            <th scope="col">PRICE</th>
                                            <th scope="col">Category</th>
                                            
                                            <th scope="col">${nav==1?"Disable":"Enable"}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listP}" var="p">
                                        <tr>
                                            <th scope="row">${p.getId()}</th>
                                            <td class="tm-product-name"><a href="manage?mode=productDetail&pid=${p.getId()}"><p class="p-0 m-2">${p.getName()}</p></a></td>
                                            <td><img width="80px" height="70px;" src="${p.getImage()}"></td>
                                            <td>${p.getFormatedPrice()}</td>
                                            <td align="middle">
                                                <c:forEach items="${listC}" var="c">
                                                    ${c.getId() == p.getCategory() ? c.getName() : ""}
                                                </c:forEach>
                                            </td>
                                            <c:if test="${nav == 1}">
                                            <td>
                                                <a href="manage?mode=delete&pid=${p.getId()}" class="tm-product-delete-link">
                                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                </a>
                                            </td>
                                            </c:if>
                                            <c:if test="${nav == 2}">
                                            <td>
                                                <a href="manage?mode=enableProduct&pid=${p.getId()}" class="tm-product-delete-link">
                                                    <i class="far fa-check-circle" style="color: #eeeff2;"></i>

                                                </a>
                                            </td>
                                            </c:if>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- table container -->
                        <a
                            href="manage?mode=addPage"
                            class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
                    </div>
                </div>
                <div style="margin-top: 52px" class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
                        <h2 class="tm-block-title">Product Brands</h2>
                        <div style="max-height: 400px;" class="tm-product-table-container">
                            <table  class="table tm-table-small tm-product-table">
                                <c:forEach items="${listB}" var="b"> 
                                    <tbody>
                                        <tr>
                                            <td class="tm-product-name">${b.getName()}</td>
                                            <td class="text-center">
                                                <a href="AdminServlet?mode=deleteCat&catID=${b.getId()}" class="tm-product-delete-link">
                                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </c:forEach>
                            </table>
                        </div>
                        <!-- table container -->
                        <!-- Button trigger modal -->
                        <!-- Button trigger modal -->
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            Add Brand
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 onclick="AddNewCat()" class="modal-title" id="exampleModalLabel">ADD NEW BRAND</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    
                                    <div id="modal_body" class="modal-body">
                                            <form action="manage?mode=newBrand" method="post">
                                                <div class="form-group">
                                                    <label for="cat_name">Category name:</label>
                                                    <input type="text" class="form-control" name="brand_name" id="cat_name" placeholder="Enter new catregory name">
                                                </div>
                                                <button type="submit" class="btn btn-primary">Add</button>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>                                            
                                        </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="AdminInclude/AdminFootInclude.jsp"></jsp:include>
        
        <script src="view/admin/js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="view/admin/js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
    </body>
</html>