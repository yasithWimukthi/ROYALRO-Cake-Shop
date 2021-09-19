<%@ page import="com.royalro.service.DecorationService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.royalro.model.DecorationItem" %><%--
  Created by IntelliJ IDEA.
  User: Sandun Dharmadasa
  Date: 9/19/2021
  Time: 12:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Royalro | Decorations</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Adamina">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Dancing+Script">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Side-Swipe-Menu-1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="assets/css/Side-Swipe-Menu.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css"
          integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="assets/css/file-upload.css">
</head>
<body>

<%
    DecorationService decorationService = new DecorationService();
    ArrayList<DecorationItem> weddingDecorations = decorationService.searchDecorationByCategory("Wedding Decorations");
    ArrayList<DecorationItem> birthdayDecorations = decorationService.searchDecorationByCategory("Birthday Decorations");
%>

<div>
    <%--Header--%>
    <jsp:include page="header.jsp"></jsp:include>
</div>
<%--    Search function--%>
<div class="search-container"
     style="position: absolute; margin-left: auto;margin-right: auto;left: 0;right: 0;text-align: right;">
    <form action="searchDecoServlet" method="post">
        <input type="text" class="search-input" name="key" placeholder="Search Decorations..."
               style="border-radius: 15px;background-color: lightgray;border-width: 0;width: 20%;text-align: center;outline: white"/>
        <input type="hidden" value="admin" name="user">
        <button class="btn btn-light search-btn" type="button" style="background-color: white;">
            <i class="fa fa-search"></i>
        </button>
    </form>
</div>

<%--    main header--%>
<div style="text-align: center;"><h3>Decoration Management</h3></div>

<%--    Navigation --%>

<div style="margin-left: 10px;text-decoration: none; ">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.jsp"
                                       style="text-decoration: none;color: #5c636a;"><span>Home</span></a></li>
        <li class="breadcrumb-item"><a href="adminDashboard.jsp"
                                       style="text-decoration: none;color: #5c636a;"><span>Admin</span></a></li>
        <li class="breadcrumb-item"><a href="DecorationManagementAdmin.jsp"
                                       style="text-decoration: none;color: #5c636a;"><span>Decoration Management</span></a>
        </li>
    </ol>
</div>

<div class="main">
    <%--    side navigation--%>
    <div class="container x-open-sidebar" style="max-width: 1350px">
        <div id="sidebar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#" data-bs-toggle="modal" data-bs-target="#addNewDecoration">Add New Decoration</a>
                </li>
                <li><a href="#">Categories</a></li>
                <li><a href="decorationReport.jsp">Reports</a></li>
                <li><a href="adminDashboard.jsp">Admin Page</a></li>
            </ul>
        </div>
        <%--    Main area--%>
        <div class="main-content">
            <div class="swipe-area" style="background-color: rgb(255,255,255);"></div>
            <a id="sidebar-toggle" data-toggle=".container" href="#" style="background-color: #ed4dc0;"><span
                    class="bar"></span><span class="bar" style="background-color: rgb(254,254,254);"></span><span
                    class="bar"></span></a>
            <div class="content"
                 style="padding-left: 56px;">

                <%--            loop categories with cards--%>
                <%--            get catagories from database and loop throug for each loop--%>
                <%--            then it will display all the categories--%>
                <%--            under all the catgorieas shoul display related decorations--%>


                <h2 style="width: 604px;
                                background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));
                                color: #ffffff;
                                margin-left: -5px;
                                padding-left: 10px;
                                font-family: serif;
                                border-radius: 10px;">Wedding Decorations</h2>

                <div class="d-xl-flex justify-content-xl-start"
                     style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                    <%--                loop card from here--%>

                    <%for (DecorationItem decoration : weddingDecorations) {%>
                    <div data-bs-toggle="modal" data-bs-target="#decorationDetails">
                        <div class="card shadow-lg" data-bs-hover-animate="pulse"
                             style="width: 300px;height: 550px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                            <div class="card-body">
                                <h4 class="card-title" style="color: rgb(104,0,167);"><%=decoration.getName()%>
                                </h4>
                                <img class="d-flex"
                                     style="background-image: url('assets/img/decorations/<%=decoration.getImagePath()%>');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">

                                <p class="card-text"
                                   style="color: rgb(95,95,95);height: 120px"><%=decoration.getDescription()%>
                                </p>
                                <p class="badge rounded-pill bg-danger" style="text-align: center">Price
                                    : <%=decoration.getPrice()%>.00</p>
                                <button
                                        class="btn btn-info"
                                        type="button"
                                        style="margin-left: 21px;"
                                        data-bs-toggle="modal"
                                        data-bs-target="#updateModal"
                                        data-bs-name="<%=decoration.getName()%>"
                                        data-bs-price="<%=decoration.getPrice()%>"
                                        data-bs-category="<%=decoration.getCategory()%>"
                                        data-bs-description="<%=decoration.getDescription()%>"
                                        data-bs-id="<%=decoration.getDecorationId()%>"
                                        data-bs-image="<%=decoration.getImagePath()%>"
                                >Update
                                </button>
                                <button
                                        class="btn btn-danger"
                                        type="button"
                                        style="margin-left: 53px;"
                                        data-bs-toggle="modal"
                                        data-bs-target="#deleteDecorationModal"
                                        data-bs-id="<%=decoration.getDecorationId()%>"
                                        data-bs-name="<%=decoration.getName()%>"
                                >
                                    Delete
                                </button>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </div>

                <h2 style="width: 604px;
                                background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));
                                color: #ffffff;
                                margin-left: -5px;
                                padding-left: 10px;
                                font-family: serif;
                                border-radius: 10px;">Birthday Decorations</h2>

                <div class="d-xl-flex justify-content-xl-start"
                     style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                    <%--                loop card from here--%>
                    <%for (DecorationItem decoration : birthdayDecorations) {%>
                    <div data-bs-toggle="modal" data-bs-target="#decorationDetails">
                        <div class="card shadow-lg" data-bs-hover-animate="pulse"
                             style="width: 300px;height: 550px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                            <div class="card-body">
                                <h4 class="card-title" style="color: rgb(104,0,167);"><%=decoration.getName()%>
                                </h4>
                                <img class="d-flex"
                                     style="background-image: url('assets/img/decorations/<%=decoration.getImagePath()%>');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">

                                <p class="card-text"
                                   style="color: rgb(95,95,95);height: 120px"><%=decoration.getDescription()%>
                                </p>
                                <p class="badge rounded-pill bg-danger" style="text-align: center">Price
                                    : <%=decoration.getPrice()%>.00</p>
                                <button
                                        class="btn btn-info"
                                        type="button"
                                        style="margin-left: 21px;"
                                        data-bs-toggle="modal"
                                        data-bs-target="#updateModal"
                                        data-bs-name="<%=decoration.getName()%>"
                                        data-bs-category="<%=decoration.getCategory()%>"
                                        data-bs-image="<%=decoration.getImagePath()%>"
                                        data-bs-description="<%=decoration.getDescription().trim()%>"
                                        data-bs-price="<%=decoration.getPrice()%>"
                                        data-bs-id="<%=decoration.getDecorationId()%>"
                                >  Update
                                </button>


                                <button
                                        class="btn btn-danger"
                                        type="button"
                                        style="margin-left: 53px;"
                                        data-bs-toggle="modal"
                                        data-bs-target="#deleteDecorationModal"
                                        data-bs-id="<%=decoration.getDecorationId()%>"
                                        data-bs-name="<%=decoration.getName()%>"
                                >
                                    Delete
                                </button>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
</div>


<%--input from--%>
<div class="modal fade" id="addNewDecoration" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel" style="text-align: center;"> Add New Decoration</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="AddDecorationServlet" method="post" id="decorationForm" enctype="multipart/form-data">

                    <div class="row">
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <label> Decoration Name</label>
                                <input type="text" class="form-control" id="nameInput" placeholder="name " name="name">
                            </div>
                            <div id="nameError"
                                 style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">*
                                Enter a valid name.
                            </div>
                            <div class="form-group">
                                <label>Price(LKR)</label>
                                <input type="text" class="form-control" id="priceInput" placeholder="xxxx.xx "
                                       style="width: 50%" name="price">
                            </div>
                            <div id="priceError"
                                 style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">*
                                Enter a valid price.
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select id="categoryInput" class="form-control" name="category">
                                    <option value="">-- SELECT CATEGORY --</option>
                                    <option value="Wedding Decorations">Wedding Decorations</option>
                                    <option value="Birthday Decorations">Birthday Decorations</option>
                                </select>
                            </div>
                            <div id="categoryError"
                                 style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">*
                                Select a valid category.
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea id="description" class="form-control" name="description">
                                     </textarea>
                            </div>
                            <div id="descriptionError"
                                 style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">*
                                Select a valid description.
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <div style="text-align: center;"><label>Image Upload</label></div>
                                <input type="file" id="image"
                                       style="border: 2px dashed #adadad;margin: 10px;padding: 80px 0px 80px 60px;border-radius: 5px;"
                                       name="image">
                            </div>
                            <div id="imageError"
                                 style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">*
                                Upload an image.
                            </div>
                        </div>

                    </div>


                    <div class="form-group" style="float: right; margin-top: 10px">
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" id="su-bu">Save</button>
                    </div>


                </form>


            </div>
            <%--            <div class="modal-footer">--%>
            <%--                <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Cancel</button>--%>
            <%--                <button type="button" class="btn btn-primary">Save</button>--%>
            <%--            </div>--%>
        </div>
    </div>
</div>

<%--update form--%>
<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="no" style="text-align: center;"> Update Decoration Details</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="UpdateDecorationServlet" method="post" enctype="multipart/form-data" id="updateDecorationForm">
                    <form>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label> Decoration Name</label>

                                    <input type="text" class="form-control"
                                           id="update-name-input" placeholder="name " name="name1">
                                </div>
                                <div id="update-name-error"
                                     style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">
                                    * Enter a valid name.
                                </div>
                                <div class="form-group">
                                    <label>Price(LKR)</label>
                                    <input type="text" class="form-control" id="update-price-input"
                                           placeholder="xxxx.xx "
                                           name="price1"
                                           style="width: 50%">
                                </div>
                                <div id="update-price-error"
                                     style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">
                                    * Enter a valid price.
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <select name="category1" id="update-category-input" class="form-control">
                                        <option value="">-- SELECT CATEGORY --</option>
                                        <option value="Wedding Decorations">Wedding Decorations</option>
                                        <option value="Birthday Decorations">Birthday Decorations</option>
                                    </select>
                                </div>
                                <div id="update-category-error"
                                     style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">
                                    * Select a valid category.
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description1" class="form-control" id="update-description">
                                     </textarea>
                                </div>
                                <div id="update-descriptionError"
                                     style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">
                                    * Select a valid description.
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <div style="text-align: center;"><label>Image Upload</label></div>
                                    <input type="file" id="updateImage"
                                           style="border: 2px dashed #adadad;margin: 10px;padding: 80px 0px 80px 60px;border-radius: 5px;"
                                           name="image1">
                                </div>
                                <div id="uploadImageError"
                                     style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">
                                    * Upload an image.
                                </div>
                            </div>
                        </div>

                        <div class="form-group" style="float: right; margin-top: 10px">
                            <input type="hidden" id="idx" name="id1">
                            <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-primary" id="up-bu">Update</button>
                        </div>
                    </form>
                </form>

            </div>
        </div>
    </div>
</div>

<%--delete confirmation modal--%>
<div class="modal fade" id="deleteDecorationModal" tabindex="-1" aria-labelledby="deleteDecorationModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete Decoration Details</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                Are you sure want to delete this item? <p id="deleteName"></p>
            </div>
            <div class="modal-footer">
                <form method="post" action="DeleteDecorationServlet">
                    <input style="display: none" type="number" id="deleteDecorationId" name="id" >
                    <button type="submit" class="btn btn-danger" style="text-align: left;margin-right: 300px;">Confirm
                    </button>
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" style="text-align: right">Cancel
                    </button>
                </form>

            </div>
        </div>
    </div>
</div>

<%--Decoration Details modal--%>
<div class="modal fade" id="decorationDetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Decoration Details</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                Details will display here
            </div>

        </div>
    </div>
</div>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>
<script src="assets/js/Side-Swipe-Menu-1.js"></script>
<script src="assets/js/Side-Swipe-Menu.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>
<script src="assets/js/decorationManagement.js"></script>
</body>
</html>
