<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 8/18/2021
  Time: 11:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Royalro | Cakes</title>
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


<div>
    <div>
        <%--Header--%>
        <jsp:include page="header.jsp"></jsp:include>
    </div>
    <%--    Search function--%>
    <div class="search-container"
         style="position: absolute; margin-left: auto;margin-right: auto;left: 0;right: 0;text-align: right;">
        <input type="text" class="search-input" name="search-bar" placeholder="Search Cakes..."
               style="border-radius: 15px;background-color: lightgray;border-width: 0;width: 20%;text-align: center;outline: white"/>
        <button class="btn btn-light search-btn" type="button" style="background-color: white;">
            <i class="fa fa-search"></i>
        </button>
    </div>

    <%--    main header--%>
    <div style="text-align: center;"><h3>Cake Management</h3></div>

    <%--    Navigation --%>

    <div style="margin-left: 10px;text-decoration: none; ">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp"
                                           style="text-decoration: none;color: #5c636a;"><span>Home</span></a></li>
            <li class="breadcrumb-item"><a href="adminDashBoard.jsp"
                                           style="text-decoration: none;color: #5c636a;"><span>Admin</span></a></li>
            <li class="breadcrumb-item"><a href="CakeManagementAdmin.jsp" style="text-decoration: none;color: #5c636a;"><span>Cake Management</span></a>
            </li>
        </ol>
    </div>

    <div class="main">
        <%--    side navigation--%>
        <div class="container x-open-sidebar" style="max-width: 1350px">
            <div id="sidebar">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#bannerformmodal" data-bs-toggle="modal" data-bs-target="#addNewCake">Add New Cake</a>
                    </li>
                    <li><a href="#">Categories</a></li>
                    <li><a href="#">Reports</a></li>
                    <li><a href="adminDashBoard.jsp">Admin Page</a></li>
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
                    <%--            under all the catgorieas shoul display related cakes--%>


                    <h2 style="width: 604px;
                                background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));
                                color: #ffffff;
                                margin-left: -5px;
                                padding-left: 10px;
                                font-family: serif;
                                border-radius: 10px;">Milk Chocolate</h2>

                    <div class="d-xl-flex justify-content-xl-start"
                         style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                        <%--                loop card from here--%>

                        <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                            <div class="card shadow-lg" data-bs-hover-animate="pulse"
                                 style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                <div class="card-body">
                                    <h4 class="card-title" style="color: rgb(104,0,167);">Devil's Food Cake</h4>
                                    <img class="d-flex" style="background-image: url('assets/img/Lindt Chocolate Truffle Cake.jpg');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                    <h6
                                            class="text-muted card-subtitle mb-2">WQC655 by Wishque Cake</h6>
                                    <p class="card-text" style="color: rgb(95,95,95);height: 120px">Forget the name, this cake is heavenly. The base is tender, the filling and frosting luscious.
                                        Let's spread the love this season with your favourite chocolate cake!</p>
                                    <button class="btn btn-info" type="button" style="margin-left: 21px;"
                                            data-bs-toggle="modal" data-bs-target="#updateNewCake">Update
                                    </button>
                                    <button class="btn btn-danger" type="button" style="margin-left: 53px;"
                                            data-bs-toggle="modal" data-bs-target="#deleteCake">Delete
                                    </button>
                                </div>
                            </div>
                        </div>

                            <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse"
                                     style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Chocolate Trifle</h4>
                                        <img class="d-flex" style="background-image: url('assets/img/Chocolate Trifle.jpg');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6
                                                class="text-muted card-subtitle mb-2">WQC655 by Wishque Cake</h6>
                                        <p class="card-text" style="color: rgb(95,95,95);height: 120px">A delicious treat for any time of the year, our Rum And Raisin Chocolate Trifle made with layers of vanilla & chocolate sponge cake. </p>
                                        <button class="btn btn-info" type="button" style="margin-left: 21px;"
                                                data-bs-toggle="modal" data-bs-target="#updateNewCake">Update
                                        </button>
                                        <button class="btn btn-danger" type="button" style="margin-left: 53px;"
                                                data-bs-toggle="modal" data-bs-target="#deleteCake">Delete
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse"
                                     style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Brownie Cheesecake</h4>
                                        <img class="d-flex" style="background-image: url('assets/img/Brownie Cheesecake.jpg');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6
                                                class="text-muted card-subtitle mb-2">WQC655 by Wishque Cake</h6>
                                        <p class="card-text" style="color: rgb(95,95,95);height: 120px">Chocolatey Brownie Cheesecake, made in to an exquisite recipe, a blend of cheese and Lindt chocolate layered on a chocolatey brownie. </p>
                                        <button class="btn btn-info" type="button" style="margin-left: 21px;"
                                                data-bs-toggle="modal" data-bs-target="#updateNewCake">Update
                                        </button>
                                        <button class="btn btn-danger" type="button" style="margin-left: 53px;"
                                                data-bs-toggle="modal" data-bs-target="#deleteCake">Delete
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse"
                                     style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Lindt Chocolate Truffle </h4>
                                        <img class="d-flex" style="background-image: url('assets/img/Brownie Cheesecake.jpg');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6
                                                class="text-muted card-subtitle mb-2">WQC655 by Wishque Cake</h6>
                                        <p class="card-text" style="color: rgb(95,95,95);height: 120px">A Rich Layers of Lindt Chocolate Ganache in a Moist Chocolate Truffle Cake. </p>
                                        <button class="btn btn-info" type="button" style="margin-left: 21px;"
                                                data-bs-toggle="modal" data-bs-target="#updateNewCake">Update
                                        </button>
                                        <button class="btn btn-danger" type="button" style="margin-left: 53px;"
                                                data-bs-toggle="modal" data-bs-target="#deleteCake">Delete
                                        </button>
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
                                border-radius: 10px;">White Chocolate</h2>

                        <div class="d-xl-flex justify-content-xl-start"
                             style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                            <%--                loop card from here--%>

                            <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse"
                                     style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Strawberry Drip Ribbon</h4>
                                        <img class="d-flex" style="background-image: url('assets/img/Strawberry Drip Ribbon.jpg');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6
                                                class="text-muted card-subtitle mb-2">WQC655 by Wishque Cake</h6>
                                        <p class="card-text" style="color: rgb(95,95,95);height: 120px">Forget the name, this cake is heavenly. The base is tender, the filling and frosting luscious.
                                            Let's spread the love this season with your favourite Strawberry cake!</p>
                                        <button class="btn btn-info" type="button" style="margin-left: 21px;"
                                                data-bs-toggle="modal" data-bs-target="#updateNewCake">Update
                                        </button>
                                        <button class="btn btn-danger" type="button" style="margin-left: 53px;"
                                                data-bs-toggle="modal" data-bs-target="#deleteCake">Delete
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse"
                                     style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Choco-nilla Celebration</h4>
                                        <img class="d-flex" style="background-image: url('assets/img/Choco-nilla Celebration.jpg');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6
                                                class="text-muted card-subtitle mb-2">WQC655 by Wishque Cake</h6>
                                        <p class="card-text" style="color: rgb(95,95,95);height: 120px">A delicious treat for any time of the year, our Rum And Raisin Chocolate Trifle made with layers of vanilla & chocolate sponge cake. </p>
                                        <button class="btn btn-info" type="button" style="margin-left: 21px;"
                                                data-bs-toggle="modal" data-bs-target="#updateNewCake">Update
                                        </button>
                                        <button class="btn btn-danger" type="button" style="margin-left: 53px;"
                                                data-bs-toggle="modal" data-bs-target="#deleteCake">Delete
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse"
                                     style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">White Chocolate Drip </h4>
                                        <img class="d-flex" style="background-image: url('assets/img/White Chocolate Drip Ribbon.jpg');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6
                                                class="text-muted card-subtitle mb-2">WQC655 by Wishque Cake</h6>
                                        <p class="card-text" style="color: rgb(95,95,95);height: 120px">Chocolatey Brownie Cheesecake, made in to an exquisite recipe, a blend of cheese and Lindt chocolate layered on a chocolatey brownie. </p>
                                        <button class="btn btn-info" type="button" style="margin-left: 21px;"
                                                data-bs-toggle="modal" data-bs-target="#updateNewCake">Update
                                        </button>
                                        <button class="btn btn-danger" type="button" style="margin-left: 53px;"
                                                data-bs-toggle="modal" data-bs-target="#deleteCake">Delete
                                        </button>
                                    </div>
                                </div>
                            </div>


                            <div data-bs-toggle="modal" data-bs-target="#cakeDetails">
                                <div class="card shadow-lg" data-bs-hover-animate="pulse"
                                     style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                    <div class="card-body">
                                        <h4 class="card-title" style="color: rgb(104,0,167);">Celebrations Ribbon  </h4>
                                        <img class="d-flex" style="background-image: url('assets/img/Celebrations Ribbon Cake.jpg');height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                        <h6
                                                class="text-muted card-subtitle mb-2">WQC655 by Wishque Cake</h6>
                                        <p class="card-text" style="color: rgb(95,95,95);height: 120px">A Rich Layers of Lindt Chocolate Ganache in a Moist Chocolate Truffle Cake. </p>
                                        <button class="btn btn-info" type="button" style="margin-left: 21px;"
                                                data-bs-toggle="modal" data-bs-target="#updateNewCake">Update
                                        </button>
                                        <button class="btn btn-danger" type="button" style="margin-left: 53px;"
                                                data-bs-toggle="modal" data-bs-target="#deleteCake">Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                </div>
            </div>
        </div>
    </div>
</div>


<%--input from--%>
<div class="modal fade" id="addNewCake" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel" style="text-align: center;"> Add New Cake</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="AddCakeServlet" method="post"  id="cakeForm">

                    <div class="row">
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <label> Cake Name</label>
                                <input type="text" class="form-control" id="nameInput" placeholder="name " >
                            </div>
                            <div id="nameError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid name.</div>
                            <div class="form-group">
                                <label>Price(LKR)</label>
                                <input type="text" class="form-control" id="priceInput" placeholder="xxxx.xx "
                                       style="width: 50%" >
                            </div>
                            <div id="priceError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid price.</div>
                            <div class="form-group">
                                <label>Weight(kg)</label>
                                <input type="text" class="form-control" id="weightInput" placeholder="1.5 "
                                       style="width: 50%">
                            </div>
                            <div id="weightError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid weight.</div>
                            <div class="form-group">
                                <label>Catagory</label>
                                <select name="catagory" id="categoryInput" class="form-control">
                                    <option value="">-- SELECT CATAGORY --</option>
                                    <option value="Milk Chocolate">Milk Chocolate</option>
                                    <option value="White Chocolate">White Chocolate</option>
                                    <option value="Coffee Mocha">Coffee Mocha</option>
                                </select>
                            </div>
                            <div id="categoryError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Select a valid category.</div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea id="description" class="form-control">
                                     </textarea>
                            </div>
                            <div id="descriptionError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Select a valid description.</div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <div style="text-align: center;"><label>Image Upload</label></div>
                                <input type="file" id="image"
                                       style="border: 2px dashed #adadad;margin: 10px;padding: 80px 0px 80px 60px;border-radius: 5px;">
                            </div>
                            <div id="imageError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Upload an image.</div>
                        </div>

                    </div>


                    <div class="form-group" style="float: right; margin-top: 10px">
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" id="su-bu">Save</button>
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
<div class="modal fade" id="updateNewCake" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="no" style="text-align: center;"> Update Cake Details</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="AddCakeServlet" method="post" enctype="multipart/form-data" id="updateCakeForm">
                    <form>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label> Cake Name</label>
                                    <input  type="text" class="form-control" id="update-name-input" placeholder="name " >
                                </div>
                                <div id="update-name-error" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid name.</div>
                                <div class="form-group">
                                    <label>Price(LKR)</label>
                                    <input type="text" class="form-control" id="update-price-input" placeholder="xxxx.xx "
                                           style="width: 20%" required>
                                </div>
                                <div id="update-price-error" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid price.</div>
                                <div class="form-group">
                                    <label>Weight(kg)</label>
                                    <input type="text" class="form-control" id="weight" placeholder="1.5 " style="width: 20%">
                                </div>
                                <div class="form-group">
                                    <label>Catagory</label>
                                    <select name="catagory" id="update-category-input" class="form-control">
                                        <option value="">-- SELECT CATAGORY --</option>
                                        <option value="Milk Chocolate">Milk Chocolate</option>
                                        <option value="White Chocolate">White Chocolate</option>
                                        <option value="Coffee Mocha">Coffee Mocha</option>
                                    </select>

                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea class="form-control">
                                     </textarea>
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="form-group">
                                    <label>Image Upload</label>
                                    <input type="file" class="form-control-file" id="exampleFormControlFile1">
                                </div>
                            </div>
                        </div>


                        <div class="form-group" style="float: right; margin-top: 10px">
                            <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </form>

            </div>
        </div>
    </div>
</div>

<%--delete confirmation modal--%>
<div class="modal fade" id="deleteCake" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete Cake Details</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                Are you sure want to delete this item?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" style="text-align: left;margin-right: 300px;">Confirm
                </button>
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal" style="text-align: right">Cancel
                </button>
            </div>
        </div>
    </div>
</div>

<%--Cake Details modal--%>
<div class="modal fade" id="cakeDetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Cake Details</h5>
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
<script src="assets/js/cakeManagement.js"></script>
</body>
</html>
