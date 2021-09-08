<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 19-Aug-21
  Time: 08:34 PM
  To change this template use File | Settings | File Templates.
--%>
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
<div>
    <jsp:include page="header.jsp"></jsp:include>
</div>
<div style="width: 1000px;height: 60px;margin-top: 0px;margin-left: -60px;padding: 10px;background-color: rgba(230,116,177,0); border-radius: 10px "><input class="border rounded" type="search" style="width: 500px;margin-right: 10px;/*background-color: rgba(255,160,191,0);*/background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));padding: 5px;margin-left: 90px;border-radius: 10px;border-radius: 20px"placeholder="    Search for anything..."><button class="btn btn-primary" type="button" style="padding-left: 12px;width: 200px;background-color: rgb(255,0,0);margin-left: 5px;border-radius: 10px">SEARCH</button></div>
<div style="height: 500px;">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-8" style="height: 500px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255)); padding: 10px;border-radius: 10px"><label style="padding: 3px;margin-bottom: 10px"><b>Your selected items</b></label>
               <%-- <div style="height: 100px;"><img class="rounded" style="margin-left: 10px;width: 100px;height: 100px;" src="assets/img/we4.jpg" width="150px" height="150px"><label style="width: 200px;height: 30px;margin-left: 10px;">Classical Decoration</label>
--%>
                    <div class="table-responsive">
                        <table id="myTable" class="table">
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th>Name</th>
                                <th>Qty</th>
                                <th>Price</th>

                                <th>    </th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="product-img">
                                            <div class="img-prdct">
                                                <img class="rounded" style="margin-left: 3px;width: 100px;height: 100px;" src="assets/img/we4.jpg" width="150px" height="150px">

                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <p style=" margin-top: 30px;margin-left: -20px">Classical Decoration</p>
                                    </td>
                                    <td>
                                        <div class="button-container">
                                            <button class="cart-qty-plus" type="button" value="+" style="margin-left: -25px;margin-top: 10px" id="plus" onclick="increment()">+</button>
                                            <input style="width: 40px" type="text" id="qty" min="1" class="qty form-control" value="1"/>
                                            <button style="margin-left: -22px" class="cart-qty-minus" type="button" value="-" id="minus">-</button>
                                        </div>
                                    </td>

                                    <td>
                                        <input name="price1" style="width: 100px;margin-top: 20px" type="text" value="65000" class="price form-control"  disabled>
                                    </td>



                                    <td>
                                        <button class="btn btn-primary " type="button" style="margin-top: 10px; margin-top: 30px;background-color: rgb(255,0,0);color: rgb(255,255,255);border-radius: 5px" data-bs-toggle="modal" data-bs-target="#deleteDeco">Remove</button>
                                    </td>
                                </tr>

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
                <div style="height: 50px;"><label style="width: 50px;margin-right: 15px;">Date :</label><input class="text-center" type="text" value="25-Aug-2021" style="border-radius: 5px;border: 1px;"></div>
                <div style="height: 50px;"><label style="width: 50px;margin-right: 15px;">Time :</label><input class="text-center" type="text" value="10.03AM" style="border-radius: 5px;border: 1px;"></div>
                <hr>
                <div style="height: 50px;"><label style="width: 50px;margin-right: 23px">Price:</label><label style="width: 50px;margin-right: 15px;margin-left: 20px">LKR</label><label  id="price" class="price text-end" style="width: 80px;margin-right: 0px;">65000</label><label>.00</label></div>
                <div style="height: 50px;"><label style="width: 80px;margin-right: 15px;">Delivery:</label><label style="width: 50px;margin-right: 15px;">LKR</label><label class="text-end" style="width: 80px;margin-right: 0px;">300</label><label>.00</label></div>
                <hr>
                <div style="height: 50px;"><label style="width: 80px;margin-right: 15px;"><strong>Sub Total</strong></label><label style="width: 50px;margin-right: 15px;">LKR</label><label id="total" class="subtotal text-end total" style="width: 80px;margin-right: 0px;">65300</label><label>.00</label></div>
                <div style="height: 32px;"><button class="btn btn-primary btn-sm bg-danger" type="button" style="margin-left: 100px;border-radius: 5px">CHECKOUT</button></div>
                <div style="height: 32px;margin-top: 5px;"><button class="btn btn-primary btn-sm bg-danger" type="button" style="margin-left: 85px;border-radius: 5px">GET QUOTATION</button></div>
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
                <button type="button" class="btn btn-danger" style="text-align: left;margin-right: 300px;">Confirm</button>
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal" style="text-align: right">Cancel</button>
            </div>
        </div>
    </div>
</div>


<script src="assets/js/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/AddToCart2.js"></script>

<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>