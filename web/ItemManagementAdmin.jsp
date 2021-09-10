
<%@ page import="com.royalro.model.ProductItem" %>
<%@ page import="com.royalro.service.ProductService" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: shalitha
  Date: 8/15/2021
  Time: 7:57 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css" integrity="sha512-EZSUkJWTjzDlspOoPSpUFR0o0Xy7jdzW//6qhUkoZ9c4StFkVsp9fbbd0O06p9ELS3H486m4wmrCELjza4JEog==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="assets/css/file-upload.css">
</head>
<body>

<%
 boolean isSearch = false;
 try {
     isSearch = (boolean)request.getAttribute("isSearch");
 }catch (Exception e){
     isSearch = false;
 }

%>
<div>
    <div>
        <%--Header--%>
        <jsp:include page="header.jsp"></jsp:include>
    </div>
    <%--    Search function--%>
    <div class="search-container" style="position: absolute; margin-left: auto;margin-right: auto;left: 0;right: 0;text-align: right;">
        <form action="ItemSearchServlet" method="post">
        <input type="text" class="search-input" name="ItemSearch" id="ItemSearch" placeholder="Search Items..." style="border-radius: 15px;background-color: lightgray;border-width: 0;width: 20%;text-align: center;outline: white" />
        <button class="btn btn-light search-btn" type="submit" style="background-color: white;">
            <i class="fa fa-search"></i>
        </button>
        </form>
    </div>

    <%--    main header--%>
    <div style="text-align: center;"><h3 >Item Management</h3></div>

    <%--    Navigation --%>

    <div style="margin-left: 10px;text-decoration: none; ">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp" style="text-decoration: none;color: #5c636a;"><span>Home</span></a></li>
            <li class="breadcrumb-item"><a href="adminDashboard.jsp" style="text-decoration: none;color: #5c636a;"><span>Admin</span></a></li>
            <li class="breadcrumb-item"><a href="ItemManagementAdmin.jsp" style="text-decoration: none;color: #5c636a;"><span>Item Management</span></a></li>
        </ol>
    </div>

    <div class="main">
        <%--    side navigation--%>
        <div class="container x-open-sidebar" style="max-width: 1350px">
            <div id="sidebar">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                    <li><a href="#" data-bs-toggle="modal" data-bs-target="#addNewItem">Add New Item</a> </li>
                    <li><a href="#" >Categories</a></li>
                    <li><a href="#">Reports</a></li>
                    <li><a href="adminDashboard.jsp">Admin Page</a></li>
                </ul>
            </div>
            <%if(!isSearch){%>
            <%--    Main area--%>
            <div class="main-content">
                <div class="swipe-area" style="background-color: rgb(255,255,255);"></div>
                <a id="sidebar-toggle" data-toggle=".container" href="#" style="background-color: #ed4dc0;">
                    <span class="bar"></span>
                    <span class="bar" style="background-color: rgb(254,254,254);"></span>
                    <span class="bar"></span>
                </a>
                <div class="content" style="padding-left: 56px;">

                    <%--            loop categories with cards--%>
                    <%--            get catagories from database and loop throug for each loop--%>
                    <%--            then it will display all the categories--%>
                    <%--            under all the catgorieas shoul display related cakes--%>

                <%  ProductService psc = new ProductService();
                    List<String> categoriesList = psc.getAllCategories();

                    for (String category: categoriesList) {

                %>
                    <h2 style="width: 604px;
                                background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));
                                color: #ffffff;
                                margin-left: -5px;
                                padding-left: 10px;
                                font-family: serif;
                                border-radius: 10px;"><%=category%></h2>

                    <div class="d-xl-flex justify-content-xl-start" style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                        <%--  loop card from here--%>

                            <%
                                ProductService ps = new ProductService();
                                List<ProductItem> itemsList = ps.getAllProducts();

                                for(ProductItem item : itemsList) {
                                    if(item.getCategory().equals(category)){
                            %>
                               <div data-bs-toggle="modal" data-bs-target="#ItemDetails">
                            <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                <div class="card-body">
                                    <h4 class="card-title" style="color: rgb(104,0,167);"><%=item.getName()%></h4>
                                    <img class="d-flex" src="<%=item.getImagePath()%>" style="object-fit: cover;height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                    <h4 class="text-muted card-subtitle mb-2">Price:<%= item.getPrice()%></h4>
                                    <p class="card-text" style="color: rgb(95,95,95);height: 110px;" id="paragraph">

                                            Brand: <%= item.getBrand()%><br>
                                            Available Qty: <%= item.getQuantity()%><br>
                                            Description:<%= item.getDescription()%>
                                    </p>
                                    <button
                                            class="btn btn-info"
                                            type="button"
                                            style="margin-left: 21px;"
                                            data-bs-toggle="modal"
                                            data-bs-target="#updateItemModal"
                                            data-bs-name ="<%=item.getName()%>"
                                            data-bs-price ="<%=item.getPrice()%>"
                                            data-bs-category ="<%=item.getCategory()%>"
                                            data-bs-qty ="<%=item.getQuantity()%>"
                                            data-bs-brand ="<%=item.getBrand()%>"
                                            data-bs-companyCode ="<%=item.getCompanyCode()%>"
                                            data-bs-description ="<%=item.getDescription()%>"
                                            data-bs-ProductID ="<%=item.getProductId()%>"
                                            data-bs-image ="<%=item.getImagePath()%>"
                                    >Update</button>
                                    <button
                                            class="btn btn-danger"
                                            type="button" style="margin-left: 53px;"
                                            data-bs-toggle="modal"
                                            data-bs-target="#deleteItem"
                                            data-bs-ProductID ="<%=item.getProductId()%>"
                                            data-bs-name ="<%=item.getName()%>"
                                    >Delete</button>
                                </div>
                            </div>
                        </div>
<%--                            <%=item.getName()%><br>--%>
                             <%}}%>
                    </div>
                <%}%>
                </div>
            </div>
            <%
                }
                else if(isSearch){
            %>
            <%--    Main area after search--%>
            <div class="main-content">
                <div class="swipe-area" style="background-color: rgb(255,255,255);"></div>
                <a  data-toggle=".container" href="#" style="background-color: #ed4dc0;">
                    <span class="bar"></span>
                    <span class="bar" style="background-color: rgb(254,254,254);"></span>
                    <span class="bar"></span>
                </a>
                <div class="content" style="padding-left: 56px;">

                    <%--            loop categories with cards--%>
                    <%--            get catagories from database and loop throug for each loop--%>
                    <%--            then it will display all the categories--%>
                    <%--            under all the catgorieas shoul display related cakes--%>

                    <%

                        List<ProductItem> categoriesList = (List<ProductItem>)request.getAttribute("ItemSearchCategory");

                        for (ProductItem pi: categoriesList) {

                    %>
                    <h2 style="width: 604px;
                                background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));
                                color: #ffffff;
                                margin-left: -5px;
                                padding-left: 10px;
                                font-family: serif;
                                border-radius: 10px;"><%=pi.getCategory()%></h2>

                    <div class="d-xl-flex justify-content-xl-start" style="/*width: 1123px;*/display: flex;flex-wrap: wrap;width: 100%;justify-content: center;align-items: center;margin: 50px 0;">
                        <%--  loop card from here--%>

                        <%
                            List<ProductItem> categoriesList2 = (List<ProductItem>)request.getAttribute("ItemSearchResult");
                            for(ProductItem item : categoriesList2) {
                            if(item.getCategory().equals(pi.getCategory())){
                        %>
                        <div data-bs-toggle="modal" data-bs-target="#ItemDetails">
                            <div class="card shadow-lg" data-bs-hover-animate="pulse" style="width: 300px;height: 453px;border-radius: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));margin: 20px;">
                                <div class="card-body">
                                    <h4 class="card-title" style="color: rgb(104,0,167);"><%=item.getName()%></h4>
                                    <img class="d-flex" src="<%=item.getImagePath()%>" style="object-fit: cover;height: 157px;width: 251px;padding: 0px;margin: 0px;margin-top: 7px;border-radius: 20px;background-repeat: no-repeat;background-size: 100%;background-position: center;padding-bottom: 0px;margin-bottom: 17px;">
                                    <h4 class="text-muted card-subtitle mb-2">Price:<%= item.getPrice()%></h4>
                                    <p class="card-text" style="color: rgb(95,95,95);height: 110px;" id="paragraph2">

                                        Brand: <%= item.getBrand()%><br>
                                        Available Qty: <%= item.getQuantity()%><br>
                                        Description:<%= item.getDescription()%>
                                    </p>
                                    <button class="btn btn-info" type="button" style="margin-left: 21px;" data-bs-toggle="modal" data-bs-target="#updateItem">Update</button>
                                    <button class="btn btn-danger" type="button" style="margin-left: 53px;" data-bs-toggle="modal" data-bs-target="#deleteItem">Delete</button>
                                </div>
                            </div>
                        </div>
                        <%--                            <%=item.getName()%><br>--%>
                        <%}}%>


                    </div>
                    <%}
                        if(categoriesList.isEmpty()){%>

                        <div style="text-align: center;">
                            <img src="assets/img/noItemFound.png" style="height: 250px;width: 250px">
                            <H1>Sorry! No Item Found!</H1>
                        </div>
                        <%}%>

                </div>
            </div>
            <%}
            %>
        </div>
    </div>
</div>





<%--input from--%>
<div class="modal fade" id="addNewItem" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="inputItemMainLabel" style="text-align: center;"> Add New Item</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="AddItemServlet" method="post" id="itemForm" enctype="multipart/form-data">

                    <div class="row">
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <label > Item Name</label>
                                <input type="text" class="form-control" name="ItemNameInput" placeholder="name " required>
                            </div>
                            <div id="ItemNameError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid name.</div>
                            <div class="form-group">
                                <label >Price(LKR)</label>
                                <input type="text" class="form-control" name="ItemPriceInput" placeholder="xxxx.xx " style="width: 50%" required>

                            </div>
                            <div id="ItemPriceError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Invalid Price</div>
                            <div class="form-group">
                                <label >Category</label>
                                <select  name="ItemCategoryInput"  id="ItemCategoryInput" class="form-control" >
                                    <option value="">-- SELECT CATEGORY -- </option>
                                    <option value="Cake tools">Cake tools</option>
                                    <option value="Decoration Items">Decoration Items</option>
                                    <option value="Cake Ingredients">Cake Ingredients</option>
                                </select>

                            </div>
                            <div id="ItemCategoryError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid Category.</div>
                            <div class="form-group">
                                <label >Qty.</label>
                                <input type="number" class="form-control" name="Qty" style="width: 50%" required>

                            </div>
                            <div id="QtyError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid Quantity.</div>
                            <div class="form-group">
                                <label > Brand</label>
                                <input type="text" class="form-control" name="Brand">
                            </div>
                            <div class="form-group">
                                <label >Company code</label>
                                <input type="text" class="form-control" name="CompanyCode">
                            </div>
                            <div class="form-group">
                                <label >Description</label>
                                <textarea class="form-control" name="description">
                                     </textarea>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <div style="text-align: center;"><label >Image Upload</label></div>
                                <input type="file"   id="ItemImage" name="ItemImage" style="border: 2px dashed #adadad;margin: 10px;padding: 80px 0px 80px 60px;border-radius: 5px;">
                            </div>
                            <div id="ItemImageError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Upload an image.</div>
                        </div>
                    </div>


                    <div class="form-group" style="float: right; margin-top: 10px">
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal" >Cancel</button>
                        <button type="submit" class="btn btn-primary" id="saveBtn">Save</button>
                    </div>


                </form>
            </div>

        </div>
    </div>
</div>

<%--update form--%>
<div class="modal fade" id="updateItemModal" tabindex="-1" aria-labelledby="UpdateModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="UpdateItemMainLabel" style="text-align: center;"> Update Item</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="UpdateItemServlet" method="post" id="UpdateItemForm" enctype="multipart/form-data">

                    <div class="row">
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <label > Item Name</label>
                                <input type="text" class="form-control" id="UpdateItemName" name="UpdateItemName" placeholder="name " required>
                            </div>
                            <div id="UpdateItemNameError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid name.</div>
                            <div class="form-group">
                                <label >Price(LKR)</label>
                                <input type="text" class="form-control" id="updateItemPrice" name="updateItemPrice" placeholder="xxxx.xx " style="width: 50%" required>

                            </div>
                            <div id="updateItemPriceError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Invalid Price</div>
                            <div class="form-group">
                                <label >Category</label>
                                <select  name="UpdateItemCategory"  id="UpdateItemCategory" class="form-control" >
                                    <option value="">-- SELECT CATEGORY -- </option>
                                    <option value="Cake tools">Cake tools</option>
                                    <option value="Decoration Items">Decoration Items</option>
                                    <option value="Cake Ingredients">Cake Ingredients</option>
                                </select>

                            </div>
                            <div id="UpdateItemCategoryError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid Category.</div>

                            <div class="form-group">
                                <label >Qty.</label>
                                <input type="number" class="form-control" id="UpdateQty" name="UpdateQty" style="width: 50%" required>

                            </div>
                            <div id="UpdateQtyError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Enter a valid Quantity.</div>
                            <div class="form-group">
                                <label > Brand</label>
                                <input type="text" class="form-control" name="UpdateBrand" id="UpdateBrand">
                            </div>
                            <div class="form-group">
                                <label >Company code</label>
                                <input type="text" class="form-control" name="UpdateCompanyCode" id="UpdateCompanyCode">
                            </div>
                            <div class="form-group">
                                <label >Description</label>
                                <textarea class="form-control" name="UpdateDescription" id="UpdateDescription">
                                     </textarea>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <div style="text-align: center;"><label >Image Upload</label></div>
                                <input type="file"
                                       id="UpdateImage"
                                       name="image"
                                       style="border: 2px dashed #adadad;margin: 10px;padding: 80px 0px 80px 60px;border-radius: 5px;"
                                       value="default">
                            </div>
                            <div id="UpadatefileUploadError" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Upload an image.</div>
                        </div>
                    </div>

                    <input style="display: none" type="number" id="ProductID" name="ProductID" >
                    <div class="form-group" style="float: right; margin-top: 10px">
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal" >Cancel</button>
                        <button type="submit" class="btn btn-primary" id="UpdateSaveBtn">Save</button>
                    </div>


                </form>
            </div>

        </div>
    </div>
</div>

<%--delete confirmation modal--%>
<div class="modal fade" id="deleteItem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Delete Item Details</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                Are you sure want to delete this item?
               <center><p id="deleteItemName" name="deleteItemName"></p></center>
                <form method="post" action="DeleteItemServlet">

                    <input style="display: none" type="number" id="deletePID" name="deletePID" >
                 <button type="submit" class="btn btn-danger" style="text-align: left;margin-right: 300px;">Confirm</button>
                 <button type="button" class="btn btn-primary" data-bs-dismiss="modal" style="text-align: right">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>

<%--Decoration Details modal--%>
<div class="modal fade" id="ItemDetails" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Item Details</h5>
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
<%--js--%>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>
<script src="assets/js/Side-Swipe-Menu-1.js"></script>
<script src="assets/js/Side-Swipe-Menu.js"></script>
<script src="assets/js/word-limit.js"></script>
<script src="assets/js/itemManagement.js"></script>
</body>

</html>
