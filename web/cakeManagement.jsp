<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/18/2021
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css" integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Royalro | Cakes</title>
</head>
<body>
<div>
    <div>
        <%--    Header--%>
        <jsp:include page="header.jsp"></jsp:include>
    </div>
    <%--    Search function--%>
    <div class="search-container" style="position: absolute; margin-left: auto;margin-right: auto;left: 0;right: 0;text-align: right;">
        <input type="text" class="search-input" name="search-bar" placeholder="Search Cakes..." />
        <button class="btn btn-light search-btn" type="button">
            <i class="fa fa-search"></i>
        </button>
    </div>

    <%--    main header--%>
    <div style="text-align: center;"><h3 >Cake Management</h3></div>

    <%--    Navigation --%>

    <div style="margin-left: 10px;text-decoration: none; ">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp" style="text-decoration: none;color: #5c636a;"><span>Home</span></a></li>
            <li class="breadcrumb-item"><a href="adminDashBoard.jsp" style="text-decoration: none;color: #5c636a;"><span>Admin</span></a></li>
            <li class="breadcrumb-item"><a href="CakeManagementAdmin.jsp" style="text-decoration: none;color: #5c636a;"><span>Cake Management</span></a></li>
        </ol>
    </div>

    <div class="main">
        <%--    side navigation--%>
        <div class="container x-open-sidebar" style="max-width: 1350px">
            <div id="sidebar">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                    <li><a href="#bannerformmodal"  data-bs-toggle="modal" data-bs-target="#addNewCake">Add New Cake</a> </li>
                    <li><a href="#" >Categories</a></li>
                    <li><a href="#">Reports</a></li>
                    <li><a href="adminDashBoard.jsp">Admin Page</a></li>
                </ul>
            </div>
            <%--    Main area--%>
            <div class="main-content">
                <div class="swipe-area" style="background-color: rgb(255,255,255);"></div><a id="sidebar-toggle" data-toggle=".container" href="#" style="background-color: #ed4dc0;"><span class="bar"></span><span class="bar" style="background-color: rgb(254,254,254);"></span><span class="bar"></span></a>
                <div class="content"
                     style="padding-left: 56px;">

                    <%--            loop categories with cards--%>
                    <%--            get catagories from database and loop throug for each loop--%>
                    <%--            then it will display all the categories--%>
                    <%--            under all the catgorieas shoul display related cakes--%>
                    <% for(int i=0; i<5 ;i++){%>
                    <h2 style="width: 604px;/*background-image: linear-gradient(to right,red, yellow);*/background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));color: rgb(104,0,167);">Category</h2>
                    <div class="d-xl-flex justify-content-xl-start" style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                        <%--                loop card from here--%>
                        <% for(int j=0; j<3 ;j++){%>
                        <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                            <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                <div class="card-body">
                                    <h4 class="card-title" style="color: rgb(104,0,167);">Title</h4><img class="d-flex" style="background-image: url(&quot;assets/img/image.png&quot;);height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                    <h6
                                            class="text-muted card-subtitle mb-2">Subtitle</h6>
                                    <p class="card-text" style="color: rgb(95,95,95);">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-info" type="button" style="margin-left: 21px;" data-bs-toggle="modal" data-bs-target="#updateNewCake">Update</button>
                                    <button class="btn btn-danger" type="button" style="margin-left: 53px;" data-bs-toggle="modal" data-bs-target="#deleteCake">Delete</button>
                                </div>
                            </div>
                        </div>
                        <%}%>
                    </div>
                    <%}%>
                </div>
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
</body>
</html>
