<%@ page import="com.royalro.service.DecorationService" %>
<%@ page import="com.royalro.model.DecorationItem" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Sandun Dharmadasa
  Date: 9/10/2021
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Royalro | Search</title>
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
    String key = request.getParameter("key");
    ArrayList<DecorationItem> weddingDecorations = decorationService.searchDecorationByCategoryAndName(key,"Wedding Decorations");
    ArrayList<DecorationItem> birthdayDecorations = decorationService.searchDecorationByCategoryAndName(key,"Birthday Decorations");
%>


<div>
    <%--Header--%>
        <%
            String type=(String)session.getAttribute("type");%>

        <% if(type.equals("customer")){ %>
        <jsp:include page="header.jsp"></jsp:include>
        <%} else { %>
        <jsp:include page="adminHeader.jsp"></jsp:include>
        <%}%>
</div>
<%--    Search function--%>
<div class="search-container"
     style="position: absolute; margin-left: auto;margin-right: auto;left: 0;right: 0;text-align: right;">
    <form action="searchDecoServlet" method="post">
        <input type="text" class="search-input" name="key" placeholder="Search Decorations..."
               style="border-radius: 15px;background-color: lightgray;border-width: 0;width: 20%;text-align: center;outline: white"/>
        <input type="hidden" value="customer" name="user">
        <button class="btn btn-light search-btn" type="submit" style="background-color: white;">
            <i class="fa fa-search"></i>
        </button>
    </form>
</div>

<%--    main header--%>
<div style="text-align: center;"><h3></h3></div>

<%--    Navigation --%>

<div style="margin-left: 10px;text-decoration: none; ">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.jsp" style="text-decoration: none;color: #5c636a;"><span>Home</span></a>
        </li>
        <li class="breadcrumb-item">
            <a href="DecorationManagementAdmin.jsp" style="text-decoration: none;color: #5c636a;"><span>Decorations</span></a>
        </li>
        <li class="breadcrumb-item">
            <a href="#" style="text-decoration: none;color: #5c636a;"><span>Search</span></a>
        </li>
    </ol>
</div>

<div class="main">
    <%--    side navigation--%>
    <div class="container x-open-sidebar" style="max-width: 1350px">
        <div id="sidebar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">Wedding Decorations</a></li>
                <li><a href="#">Birthday Decorations</a></li>

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

                <%if (weddingDecorations.size() ==0 && birthdayDecorations.size() ==0) {%>
                <div style="margin-bottom: 500px" class="alert alert-danger d-flex align-items-center" role="alert">
                    <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                    <div>
                        The product you are looking for cant be found. Please try again.
                    </div>
                </div>
                <%}%>

                <% if (weddingDecorations.size() != 0) { %>
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
                    <%for (DecorationItem decorationItem : weddingDecorations) {%>
                    <div data-bs-toggle="modal" data-bs-target="#decorationDetails">
                        <div class="card shadow-lg" data-bs-hover-animate="pulse"
                             style="width: 300px;height: 550px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                            <div class="card-body">
                                <h4 class="card-title" style="color: rgb(104,0,167);"><%=decorationItem.getName()%>
                                </h4>
                                <img class="d-flex"
                                     style="background-image: url('assets/img/decorations/<%=decorationItem.getImagePath()%>');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">

                                <p class="card-text"
                                   style="color: rgb(95,95,95);height: 120px;text-align: justify"><%=decorationItem.getDescription()%>
                                </p>
                                <p class="badge rounded-pill bg-danger" style="text-align: center">Price : <%=decorationItem.getPrice()%>.00</p>
                                <button class="btn btn-light text-center d-xl-flex mx-auto justify-content-xl-center"
                                        type="button"
                                        style="margin-left: 0px;background-color: orange;color: rgb(255,255,255);">
                                    Add To Cart
                                </button>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </div>
                <%}%>

                <% if (birthdayDecorations.size() != 0) { %>
                <h2 style="width: 604px;
                                background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));
                                color: #ffffff;
                                margin-left: -5px;
                                padding-left: 10px;
                                font-family: serif;
                                border-radius: 10px;">Birthday Decorations</h2>

                <div class="d-xl-flex justify-content-xl-start"
                     style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                    <%for (DecorationItem decorationItem : birthdayDecorations) {%>
                    <div data-bs-toggle="modal" data-bs-target="#decorationDetails">
                        <div class="card shadow-lg" data-bs-hover-animate="pulse"
                             style="width: 300px;height: 550px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                            <div class="card-body">
                                <h4 class="card-title" style="color: rgb(104,0,167);"><%=decorationItem.getName()%>
                                </h4>
                                <img class="d-flex"
                                     style="background-image: url('assets/img/decorations/<%=decorationItem.getImagePath()%>');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">

                                <p class="card-text"
                                   style="color: rgb(95,95,95);height: 120px;text-align: justify"><%=decorationItem.getDescription()%>
                                </p>
                                <p class="badge rounded-pill bg-danger" style="text-align: center">Price : <%=decorationItem.getPrice()%>.00</p>
                                <button class="btn btn-light text-center d-xl-flex mx-auto justify-content-xl-center"
                                        type="button"
                                        style="margin-left: 0px;background-color: orange;color: rgb(255,255,255);">
                                    Add To Cart
                                </button>
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


<%--Cake Details modal
<div class="modal fade" id="cakeDetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Cake Details</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                Details will display here
            </div>
        </div>
    </div>
</div>--%>
<div>
    <%--footer--%>
    <jsp:include page="footer.jsp"></jsp:include>
</div>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>
<script src="assets/js/Side-Swipe-Menu-1.js"></script>
<script src="assets/js/Side-Swipe-Menu.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>
</body>

</html>
