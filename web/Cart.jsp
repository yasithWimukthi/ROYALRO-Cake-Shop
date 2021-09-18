<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 19-Aug-21
  Time: 08:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.royalro.service.CartService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.royalro.model.Cart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <script type="text/javascript" src="assets/js/index.js"></script>
    <script src="scripts/jquery.js"></script>

</head>
<body>
<%
    CartService cartService = new CartService();
    ArrayList<Cart> cartArrayList = cartService.getAllCartItems();
    Float x = cartService.total(cartArrayList);
    System.out.println(x);

%>

<div>
    <jsp:include page="header.jsp"></jsp:include>
</div>

<%--<div class="search-container"--%>
<%--     style="position: absolute; margin-left: auto;margin-right: auto;left: 0;right: 0;text-align: right;">--%>
<%--    <form action="searchCartServlet" method="post">--%>
<%--        <input type="text" class="search-input" name="key" placeholder="Search Items..."--%>
<%--               style="border-radius: 15px;background-color: lightgray;border-width: 0;width: 20%;text-align: center;outline: white"/>--%>
<%--        <input type="hidden" value="admin" name="user">--%>
<%--        <button class="btn btn-light search-btn" type="submit" style="background-color: white;">--%>
<%--            <i class="fa fa-search"></i>--%>
<%--        </button>--%>
<%--    </form>--%>
<%--</div>--%>


<div style="width: 1000px;height: 60px;margin-top: 0px;margin-left: -60px;padding: 10px;background-color: rgba(230,116,177,0); border-radius: 10px "><form action="searchCartServlet" method="post"><input class="border rounded" type="search" style="width: 500px;margin-right: 10px;/*background-color: rgba(255,160,191,0);*/background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));padding: 5px;margin-left: 90px;border-radius: 10px;border-radius: 20px" name="key" placeholder="    Search for anything..."><button class="btn btn-primary" type="submit" style="padding-left: 12px;width: 200px;background-color: rgb(255,0,0);margin-left: 5px;border-radius: 10px">SEARCH</button></form></div>



<div style="height: 500px;">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-8" style="height: 500px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255)); padding: 10px;border-radius: 10px"><label style="padding: 3px;margin-bottom: 10px"><b>Your selected items</b></label>
               <%-- <div style="height: 100px;"><img class="rounded" style="margin-left: 10px;width: 100px;height: 100px;" src="assets/img/we4.jpg" width="150px" height="150px"><label style="width: 200px;height: 30px;margin-left: 10px;">Classical Decoration</label>
--%>
                    <div class="table-responsive">
                        <table id="myTable" class="table" >
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th>Name</th>
                                <th>Qty</th>
                                <th>Price</th>
                                <th></th>

                            </tr>
                            </thead>
                            <tbody>
                            <%for (Cart cart : cartArrayList) {%>
                                <tr>
                                    <td>
<%--                                        <div class="product-img">--%>
<%--                                            <div class="img-prdct">--%>
                                                <img  style="background-image: url('assets/img/decorations/<%=cart.getImagePath()%>');height: 150px;width: 150px;padding: 0px;margin: 0px;margin-top: 7px;border: none;background-repeat: no-repeat;background-size: 100%;background-position: center;" >

<%--                                            </div>--%>
<%--                                        </div>--%>
                                    </td>
                                    <td>
                                        <p style=" margin-top: 30px;margin-left: 0px" id="p1"><%=cart.getName()%></p>
                                    </td>
<%--                                    <td>--%>
<%--                                        <div class="button-container">--%>

<%--                                        </div>--%>
<%--                                    </td>--%>
                                    <td>
                                        <button data-decrease id="x" >-</button>
                                        <input data-value type="hidden" value="1" max="100"  min="1"  name="qty1"/>
                                        <p style=" margin-top: 30px;margin-left: -20px"><%=cart.getQty()%></p>
                                        <button data-increase id="y" type="button">+</button>

                                    </td>

                                    <td>
                                        <input id='price' name="price1" style="width: 100px;margin-top: 20px" type="text" value="<%=cart.getPrice()%>" class="price form-control"  disabled>
                                    </td>

<%--                                    <td>--%>
<%--                                        <input id='idx'  style="width: 50px;margin-top: 20px" type="hidden" value="<%=cart.getItemId()%>" class="price form-control"  disabled>--%>
<%--                                    </td>--%>

<%--                                    <td>--%>
<%--                                        <button data-decrease id="x" >-</button>--%>
<%--                                        <input data-value type="hidden" value="1" max="100"  min="1"  name="qty1"/>--%>
<%--                                        <button data-increase id="y" type="button">+</button>--%>
<%--                                    </td>--%>

                                    <td>
                                        <form action="inc" method="get" enctype="multipart/form-data" id="incForm">
                                            <input id='inc' name="myID1" style="width: 100px;margin-top: 20px" type="hidden" class="price form-control" value="<%=cart.getItemId()%>" >
                                            <input id='incQty' name="myQ1" style="width: 100px;margin-top: 20px" type="hidden" class="price form-control" " >
                                        </form>

                                    </td>

                                    <td>
                                        <form action="dec" method="get" enctype="multipart/form-data" id="decForm">
                                            <input id='dec' name="myID2" style="width: 100px;margin-top: 20px" type="hidden" class="price form-control" value="<%=cart.getItemId()%>" >
                                            <input id='decQty' name="myQ2" style="width: 100px;margin-top: 20px" type="hidden" class="price form-control" " >
                                        </form>

                                    </td>

                                    <td>
                                        <form action="DeleteCartServlet" method="get" enctype="multipart/form-data" id="deleteItemForm">
                                            <input id='id' name="myID" style="width: 100px;margin-top: 20px" type="hidden" class="price form-control" value="<%=cart.getItemId()%>" >
                                            <button class="btn btn-primary " type="button" style="margin-top: 10px; margin-top: 30px;background-color: rgb(255,0,0);color: rgb(255,255,255);border-radius: 5px" data-bs-toggle="modal" data-bs-target="#deleteDeco" onclick="setData()">Remove</button>

                                        </form>
                                    </td>
                                </tr>
                            <%}%>
                                </tr>
                            </tbody>
                            </thead>
                            <tbody>

                            </tbody>


                        </table>
                    </div>



                <%--    <label
                            style="width: 30px;">Qty.</label>
                            <input value="1" type="number" class="num rounded border-0" style="width: 50px "><label class="itmPrice" style="width: 40px;height: 50px;margin-left: 50px;">65000.00
                            <button class="btn btn-primary " type="button" style="margin-top: 10px;background-color: rgb(255,0,0);color: rgb(255,255,255);border-radius: 5px" data-bs-toggle="modal" data-bs-target="#deleteDeco">Remove</button></label></div>
                <div
                        style="height: 100px;margin-top: 50px;"><img class="qty rounded" style="margin-left: 10px;width: 100px;height: 100px;" src="assets/img/MicrosoftTeams-image.png" width="150px" height="150px"><label style="width: 200px;height: 30px;margin-left: 10px;">Kids Type Decoration</label>
                    <label
                            style="width: 30px;">Qty.</label>
                  */  <input value="1" type="number" class="num rounded border-0" style="width: 50px "><label class="itemPrice" style="width: 40px;height: 50px;margin-left: 50px;">35000.00<button class="btn btn-primary border rounded" type="button" style="margin-top: 10px;background-color: rgb(255,0,0);color: rgb(255,255,255);border-radius: 5px"data-bs-toggle="modal" data-bs-target="#deleteDeco">Remove</button></label></div>

                --%>
            </div>
            <div class="col-md-6 col-lg-4" style="background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255)); padding: 10px; padding-left:50px;border-radius: 10px">
                <div style="height: 100px;"><label style="width: 250px;padding: 3px; border: 0px">Address</label><textarea style="width: 250px;border-radius: 5px">No 123,Wijerama rd, Colombo 07.</textarea></div>
                <div style="height: 50px;"><label style="width: 50px;margin-right: 15px;">Date :</label><input class="text-center" type="date" value="" style="border-radius: 5px;border: 1px;"></div>
                <div style="height: 50px;"><label style="width: 50px;margin-right: 15px;">Time :</label><input class="text-center" type="time" value="" style="border-radius: 5px;border: 1px;"></div>
                <hr>
                <div style="height: 50px;"><label style="width: 50px;margin-right: 23px">Price:</label><label style="width: 50px;margin-right: 15px;margin-left: 20px">LKR</label><label  id="price2" class="price text-end" style="width: 80px;margin-right: 0px;"><%=x%></label></div>
                <div style="height: 50px;"><label style="width: 80px;margin-right: 15px;">Delivery:</label><label style="width: 50px;margin-right: 15px;">LKR</label><label class="text-end" style="width: 80px;margin-right: 0px;">300</label><label>.00</label></div>
                <hr>
                <div style="height: 50px;"><label style="width: 80px;margin-right: 15px;"><strong>Sub Total</strong></label><label style="width: 50px;margin-right: 15px;">LKR</label><label id="total" class="subtotal text-end total" style="width: 80px;margin-right: 0px;"><%=x+300%></label></div>
                <div style="height: 32px;"><button class="btn btn-primary btn-sm bg-danger" type="button" style="margin-left: 100px;border-radius: 5px" onclick="checkout()">CHECKOUT</button></div>
                <div style="height: 32px;margin-top: 5px;"><button class="btn btn-primary btn-sm bg-danger" type="button" onclick="window.location.href = ' cartReport.jsp';" style="margin-left: 85px;border-radius: 5px" > GET QUOTATION </button></div>

            </div>
        </div>
    </div>
</div>
<br>

<! delete cart details >
<div class="modal fade" id="deleteDeco" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Delete Item</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                Are you sure want to delete this item?
            </div>
            <div class="modal-footer">



                    <div class="form-group" style="float: right; margin-top: 10px">


                        <button type="button" class="btn btn-danger" style="text-align: left;margin-right: 300px;" onclick="sendForm()">Confirm</button>
                    </div>
                </form>
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal" style="text-align: right">Cancel</button>
            </div>
        </div>

    </div>
</div>


<script src="assets/js/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/AddToCart.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function checkout(){
        Swal.fire({

            icon: 'success',
            title: 'Your work has been saved',
            showConfirmButton: false,

        })
    }
</script>

<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>