<%--
  Created by IntelliJ IDEA.
  User: Sandun Dharmadasa
  Date: 8/20/2021
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>HEADER</title>
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
    <link rel="stylesheet" href="assets/css/file-upload.css">
</head>
<body>


<div>
    <div>
        <%--Header--%>
        <jsp:include page="header.jsp"></jsp:include>
    </div>
    <%--    Search function--%>
    <div class="search-container" style="position: absolute; margin-left: auto;margin-right: auto;left: 0;right: 0;text-align: right;">
        <input type="text" class="search-input" name="search-bar" placeholder="Search Decorations..." style="border-radius: 15px;background-color: lightgray;border-width: 0;width: 20%;text-align: center;outline: white" />
        <button class="btn btn-light search-btn" type="button" style="background-color: white;">
            <i class="fa fa-search"></i>
        </button>
    </div>

    <%--    main header--%>
    <div style="text-align: center;"><h3 ></h3></div>

    <%--    Navigation --%>

    <div style="margin-left: 10px;text-decoration: none; ">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp" style="text-decoration: none;color: #5c636a;"><span>Home</span></a></li>
            <li class="breadcrumb-item"><a href="DecorationUserView.jsp" style="text-decoration: none;color: #5c636a;"><span>Decorations</span></a></li>
        </ol>
    </div>

    <div class="main">
        <%--    side navigation--%>
        <div class="container x-open-sidebar" style="max-width: 1350px">
            <div id="sidebar">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                    <li><a href="#" >Category 1</a></li>
                    <li><a href="#" >Category 2</a></li>
                    <li><a href="#" >Category 3</a></li>

                </ul>
            </div>
            <%--    Main area--%>
            <div class="main-content">
                <div class="swipe-area" style="background-color: rgb(255,255,255);"></div>
                <a id="sidebar-toggle" data-toggle=".container" href="#" style="background-color: #ed4dc0;">
                    <span class="bar"></span>
                    <span class="bar" style="background-color: rgb(254,254,254);">
                    </span><span class="bar"></span>
                </a>
                <div class="content"
                     style="padding-left: 56px;">

                    <%--            loop categories with cards--%>
                    <%--            get catagories from database and loop throug for each loop--%>
                    <%--            then it will display all the categories--%>
                    <%--            under all the catgorieas shoul display related cakes--%>

                    <h2 style="width: 604px;
                                background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));
                                color: #ffffff;
                                margin-left: -5px;
                                padding-left: 10px;
                                font-family: serif;
                                border-radius: 10px;">Wedding Decorations</h2>

                    <div class="d-xl-flex justify-content-xl-start" style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                        <%--                loop card from here--%>

                        <div data-bs-toggle="modal" data-bs-target="#DecorationDetails">
                            <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                <div class="card-body">
                                    <h4 class="card-title" style="color: rgb(104,0,167);">Classical Decoration</h4><img class="d-flex mx-auto" style="background-image: url(&quot;assets/img/we4.jpg&quot;);height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                    <h6 class="text-muted card-subtitle mb-2"></h6>
                                    <p class="card-text" style="color: rgb(95,95,95);">This is a wedding decoration which is decorated using natural ingredients. It has a good classical look and it is very suitable for kandyan type weddings.</p>
                                    <p class="card-text" style="color: rgb(95,95,95);">Price: 65000.00</p>
                                    <button class="btn btn-light text-center d-xl-flex mx-auto justify-content-xl-center"  type="button" style="margin-left: 0px;background-color: orange;color: rgb(255,255,255);">Add To Cart</button>
                                </div>
                            </div>
                        </div>
                            <div data-bs-toggle="modal" data-bs-target="#DecorationDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Outdoor Decoration</h4><img class="d-flex mx-auto" style="background-image: url(&quot;assets/img/we1.jpg&quot;);height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6 class="text-muted card-subtitle mb-2"></h6>
                                        <p class="card-text" style="color: rgb(95,95,95);">This is a very modern type wedding decoration which is decirated using artificial things. It has a beautiful modern look and it is very suitable for western type outdoof weddings.</p>
                                        <p class="card-text" style="color: rgb(95,95,95);">Price: 100000.00</p>
                                        <button class="btn btn-light text-center d-xl-flex mx-auto justify-content-xl-center"  type="button" style="margin-left: 0px;background-color: orange;color: rgb(255,255,255);">Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                            <div data-bs-toggle="modal" data-bs-target="#DecorationDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Indoor Decoration</h4><img class="d-flex mx-auto" style="background-image: url(&quot;assets/img/we5.jpg&quot;);height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6 class="text-muted card-subtitle mb-2"></h6>
                                        <p class="card-text" style="color: rgb(95,95,95);">This is a very modern type wedding decoration which is decorated using both artificial and natural things. It has an attractive and modern look. It is very suitable for indoor weddings.</p>
                                        <p class="card-text" style="color: rgb(95,95,95);">Price: 85000.00</p>
                                        <button class="btn btn-light text-center d-xl-flex mx-auto justify-content-xl-center"  type="button" style="margin-left: 0px;background-color: orange;color: rgb(255,255,255);">Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                    </div>
                        <h2 style="width: 604px;
                                background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));
                                color: #ffffff;
                                margin-left: -5px;
                                padding-left: 10px;
                                font-family: serif;
                                border-radius: 10px;">Birthday Decorations</h2>

                        <div class="d-xl-flex justify-content-xl-start" style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                            <%--                loop card from here--%>

                            <div data-bs-toggle="modal" data-bs-target="#DecorationDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Kids Type Dedoration</h4><img class="d-flex mx-auto" style="background-image: url(&quot;assets/img/bd2.jpeg&quot;);height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6 class="text-muted card-subtitle mb-2"></h6>
                                        <p class="card-text" style="color: rgb(95,95,95);">This is a modern type birthday decoration which is very suitable for decorating the birthday parties of small kids. It has a very attractive and beautiful look that kids are like.</p>
                                        <p class="card-text" style="color: rgb(95,95,95);">Price: 35000.00</p>
                                        <button class="btn btn-light text-center d-xl-flex mx-auto justify-content-xl-center"  type="button" style="margin-left: 0px;background-color: orange;color: rgb(255,255,255);">Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                            <div data-bs-toggle="modal" data-bs-target="#DecorationDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Teenager Decoration</h4><img class="d-flex mx-auto" style="background-image: url(&quot;assets/img/bd1.jpeg&quot;);height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6 class="text-muted card-subtitle mb-2"></h6>
                                        <p class="card-text" style="color: rgb(95,95,95);">This is a modern type birthday decoration which is very suitable for decorating the birthday parties of teenagers. It has a very rich and modern look.</p>
                                        <p class="card-text" style="color: rgb(95,95,95);">Price: 60000.00</p>
                                        <button class="btn btn-light text-center d-xl-flex mx-auto justify-content-xl-center"  type="button" style="margin-left: 0px;background-color: orange;color: rgb(255,255,255);">Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                            <div data-bs-toggle="modal" data-bs-target="#DecorationDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Adults Type Decoration</h4><img class="d-flex mx-auto" style="background-image: url(&quot;assets/img/bd4.jpg&quot;);height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6 class="text-muted card-subtitle mb-2"></h6>
                                        <p class="card-text" style="color: rgb(95,95,95);">This is a very modern birthday decoration which is very suitable for decorating the birthday parties of adults. It has a very rich, attractive and professional look.</p>
                                        <p class="card-text" style="color: rgb(95,95,95);">Price: 45000.00</p>
                                        <button class="btn btn-light text-center d-xl-flex mx-auto justify-content-xl-center"  type="button" style="margin-left: 0px;background-color: orange;color: rgb(255,255,255);">Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>






<%--Cake Details modal--%>
<div class="modal fade" id="DecorationDetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Decoration Details</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                Details will display here
            </div>

        </div>
    </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>
<script src="assets/js/Side-Swipe-Menu-1.js"></script>
<script src="assets/js/Side-Swipe-Menu.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>
</body>

</html>
