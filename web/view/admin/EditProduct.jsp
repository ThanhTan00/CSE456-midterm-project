<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Edit Product</title>
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
            />
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="view/admin/css/fontawesome.min.css" />
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="view/admin/jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
        <!-- http://api.jqueryui.com/datepicker/ -->
        <link rel="stylesheet" href="view/admin/css/bootstrap.min.css" />
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="view/admin/css/templatemo-style.css">
        <!--
            Product Admin CSS Template
            https://templatemo.com/tm-524-product-admin
        -->
    </head>

    <body>
        <jsp:include page="AdminInclude/AdminHeadInclude.jsp"></jsp:include>
            <div class="container tm-mt-big tm-mb-big">
                    <center><p class="${message==null ? " ": "alert-success alert" }">${message}</p></center>
             
                <div class="row">
                    <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                        <c:set var="p" value="${product}"/>
                        <div class="row tm-edit-product-row">
                            <div class="col-xl-6 col-lg-6 col-md-12">
                                <h1 class="tm-block-title d-inline-block">Edit Product Info</h1>
                                <form action="manage?mode=editInfo" class="tm-edit-product-form" method="Post">
                                    <div class="form-group mb-3">
                                        <label
                                            for="id"
                                            >Product ID
                                        </label>
                                        <input
                                            id="id"
                                            name="id"
                                            type="text"
                                            class="form-control validate"
                                            value="${p.getId()}"
                                            readonly
                                            />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="name"
                                            >Product Name
                                        </label>
                                        <input
                                            id="name"
                                            name="name"
                                            type="text"
                                            class="form-control validate"
                                            value="${p.getName()}"
                                            />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="price"
                                            >Price
                                        </label>
                                        <input
                                            id="price"
                                            name="price"
                                            type="number"
                                            class="form-control validate"
                                            value="${p.getPrice()}"
                                            />
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="category"
                                            >Category</label
                                        >
                                        <select
                                            class="custom-select tm-select-accounts"
                                            id="category"
                                            name="category"
                                            >
                                            <c:forEach items="${listC}" var="c">
                                                <option value="${c.id}" ${p.getCategory()==c.getId()? "selected=`selected`":""}>${c.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="brand"
                                            >Brand</label
                                        >
                                        <select
                                            class="custom-select tm-select-accounts"
                                            id="brand"
                                            name="brand"
                                            >
                                            <c:forEach items="${listB}" var="b">
                                                <option value="${b.id}" ${p.getBrand()==b.getId()? "selected=`selected`":""}>${b.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label
                                            for="description"
                                            >Description</label
                                        >
                                        <textarea
                                            class="form-control validate"
                                            id="description"
                                            rows="3"
                                            name="description"
                                            >${p.getDescription()}</textarea>
                                    </div>
                                    <div class="form-group mb-3">
                                        <button type="submit" class="btn btn-primary btn-block text-uppercase">Save info Change</button>
                                    </div>
                                </form>                  
                            </div>

                            <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                                <h1 class="tm-block-title d-inline-block">Edit Product Image</h1> 
                                <form action="manage?mode=updateImage" class="tm-edit-product-form" method="Post" enctype="multipart/form-data">
                                    <input
                                        id="id"
                                        name="id"
                                        type="text"
                                        class="form-control validate"
                                        value="${p.getId()}"
                                        readonly
                                        hidden
                                        />
                                    <input type="text" name="name" value="${p.getName()}" readonly hidden/>
                                    <div class="tm-product-img-dummy mx-auto">
                                        <image class="tm-product-img-dummy mx-auto" src="${product.getImage()}">
                                    </div>
                                    <div class="custom-file mt-3 mb-3">
                                        <input name="image" id="fileInput" type="file" style="display: none;" />
                                        <input 
                                            style=""
                                            type="button"
                                            class="btn btn-primary btn-block mx-auto"
                                            value="UPLOAD PRODUCT IMAGE"
                                            onclick="document.getElementById('fileInput').click();"
                                            />
                                        <input 
                                            style=""
                                            type="submit"
                                            class="btn btn-primary btn-block mx-auto"
                                            value="SAVE IMAGE CHANGE"
                                            />
                                    </div>
                                </form>
                                <h1 class="tm-block-title d-inline-block mt-5">Edit Size - Quantity</h1>
                                <form action="manage?mode=updateQuantity" class="tm-edit-product-form" method="post">
                                    <div class="row">
                                        <input type="text" name="id" value="${p.getId()}" readonly hidden/>
                                        <c:forEach items="${listS}" var="s">
                                        <div class="col-md-4 form-group pr-0">
                                            <label>size ${s.getSize()}: </label>
                                            <input name="size${s.getSize()}" style="width: 45%;" type="number" min="0" value="${s.getQuantity()}" />
                                        </div>
                                        </c:forEach>
                                    </div>
                                    <div class="row">
                                        <button type="submit" class="btn btn-primary btn-block text-uppercase">Save Quantity Change</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="AdminInclude/AdminFootInclude.jsp"></jsp:include>

        <script src="view/admin/js/jquery-3.3.1.min.js"></script>
        <!-- https://jquery.com/download/ -->
        <script src="view/admin/jquery-ui-datepicker/jquery-ui.min.js"></script>
        <!-- https://jqueryui.com/download/ -->
        <script src="view/admin/js/bootstrap.min.js"></script>
        <!-- https://getbootstrap.com/ -->
        <script>
                                                $(function () {
                                                    $("#expire_date").datepicker();
                                                });
        </script>
    </body>
</html>
