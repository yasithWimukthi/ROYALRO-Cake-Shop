<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="com.royalro.service.CustomerService" %>
<%@ page import="com.royalro.model.Customer" %>

<%--Created by IntelliJ IDEA.
  User: acer
  Date: 19-Aug-21
  Time: 08:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Profile</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/Add-Another-Button.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
<%
    CustomerService customerService = new CustomerService();
    Customer customer = customerService.getCustomer();
%>


<div>
    <%--    Header--%>
    <jsp:include page="header.jsp"></jsp:include>
</div>

<div></div>
<div>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-lg-3" style="height: 550px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));padding: 20px;border-radius: 5px">
                <h1 style="font-size: 20px;width: 220px;padding: 2px;margin-bottom: 10px;">Manage my Account</h1>
                <div style="height: 30px;"><a href="#" style="background-color: rgba(63,57,57,0);color: rgb(120,126,133);padding-top: 2px;">My profile</a></div>
                <div style="height: 30px;"><a href="#" style="background-color: rgba(63,57,57,0);color: rgb(120,126,133);padding-top: 2px;">Address Book</a></div>
                <div style="height: 30px;"><a href="#" style="background-color: rgba(63,57,57,0);color: rgb(120,126,133);padding-top: 2px;">My payment option</a></div>
                <div style="height: 30px;"><a href="#" style="background-color: rgba(63,57,57,0);color: rgb(120,126,133);padding-top: 2px;">Points</a></div>
                <div style="height: 30px;"><a href="#" style="background-color: rgba(63,57,57,0);color: rgb(120,126,133);padding-top: 2px;">Vouchers</a></div>
                <h1 style="font-size: 20px;width: 220px;padding: 2px;margin-top: 20px;margin-bottom: 10px;">My orders</h1>
                <div style="height: 30px;"><a href="#" style="background-color: rgba(63,57,57,0);color: rgb(120,126,133);padding-top: 2px;">My returns</a></div>
                <div style="height: 30px;"><a href="#" style="background-color: rgba(63,57,57,0);color: rgb(120,126,133);padding-top: 2px;">My cancellation</a></div>
                <h1 style="font-size: 20px;width: 220px;padding: 2px;margin-top: 20px;">My Shopping cart</h1>
            </div>
            <div class="col-md-4 col-lg-2" style="background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));height: 550px; padding: 20px;border-radius: 5px">
                <div style="height: 75px;"><label name= name style="width: 130px;padding: 2px;"><strong>User Name</strong></label><label style="width: 130px;margin-bottom: 50px"><%=customer.getName()%></label></div>
                <div style="height: 75px;"><label style="width: 130px;"><strong>Email address</strong></label><label style="width: 130px;margin-bottom: 50px"><%=customer.getEmail()%></label></div>
                <div style="height: 75px;"><label style="width: 130px;"><strong>Mobile</strong></label><label style="width: 130px;margin-bottom: 50px"><%=customer.getMobile()%></label></div>
                <div style="height: 75px;"><label style="width: 130px;"><strong>Birthday</strong></label><label style="width: 130px;margin-bottom: 50px"><%=customer.getBirthDate()%></label></div>
                <div style="height: 75px;"><label style="width: 130px;"><strong>Gender</strong></label><label style="width: 130px;margin-bottom: 50px"><%=customer.getGender()%></label></div>
            </div>
            <div class="col-md-4 col-lg-7" style="height: 550px;">
                <div style="height: 300px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255)); padding: 20px;border-radius: 5px">
                    <h2 style="padding-left: 10px;">Manage my Account</h2>
                    <div class="col-md-4 col-lg-3"style="height: 150px;width: 520px;">

                        <label style="width: 100px;padding: 10px;"><strong>Address 1</strong></label>

                        <input class="form-control-plaintext" type="text" value="No 123,Wijerama rd, Colombo 07" readonly="" style="width: 260px;height: 80px;padding: 10px;">
                       <%if(customer.getAddress2()!=null){%>
                        <div style="margin-left: 300px;margin-top: -123.5px"><label style="width: 100px;padding: 10px;"><strong>Address 2</strong></label>
                        <input class="form-control-plaintext" type="text" value="<%=customer.getAddress2()%>" readonly="" style="width: 260px;height: 80px;padding: 10px;"></div>

                        <%}%>
                        <button data-bs-toggle="modal" data-bs-target="#insertAddress" class="btn btn-outline-primary text-truncate float-none float-sm-none add-another-btn"data-bs-hover-animate="pulse" type="button" style="margin-top: 10px;width: 520px;margin-left: 20px;">Add Another Address<i class="fas fa-plus-circle edit-icon"></i></button>



                    </div>
                        <div class="col-md-4 col-lg-4">


                            </div>

                    </div>

                <div style="height: 230px;margin-top: 20px;background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255)); padding: 20px;border-radius: 5px">
                    <div class="table-responsive" style="width: 510PX;height: 200px;/*background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));*/">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Orders</th>
                                <th>Placed on</th>
                                <th>Items</th>
                                <th>Total</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>02/08/2021</td>
                                <td>Strawberry Cake</td>
                                <td>450.00</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>05/08/2021</td>
                                <td>Icing sugar</td>
                                <td>300.00</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="btn-group" role="group" style="margin-top: 10px;border-radius: 5px"><button class="btn btn-primary" type="button" style="width: 340px;margin-left: 100px;margin-right: 5px;border-radius: 5px"data-bs-toggle="modal" data-bs-target="#updateProfile">UPDATE PROFILE</button><button class="btn btn-primary" type="button" style="width: 310px;margin-right: 5px;border-radius: 5px">CHANGE PASSWORD</button><button class="btn btn-danger" type="button" style="width: 320px;border-radius: 5px" data-bs-toggle="modal" data-bs-target="#deleteProfileModal">REMOVE ACCOUNT</button></div>
<br>


<%--update form--%>
<div class="modal fade" id="updateProfile" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="no" style="text-align: center;"> Update Profile</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="UpdateProfileServlet" method="post" enctype="multipart/form-data">

                    <div class="row">
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <label > Full Name</label>
                                <input type="text" name="name" value="<%=customer.getName()%>" class="form-control" id="UpdateDecorationName" placeholder="name " required>
                            </div>
                            <div class="form-group">
                                <label >Email address</label>
                                <input type="email" name="email" value="<%=customer.getEmail()%>"  class="form-control" id="UpdateDecorationPrice" placeholder="" required>

                            </div>

                            <div class="form-group">
                                <label >Mobile</label>
                                <input type="number" name="mobile" value="<%=customer.getMobile()%>" class="form-control" id="UpdateDecorationMobile" placeholder="" style="width: 50%" required>

                            </div>

                            <div class="form-group">
                                <label >Birthday</label>
                                <input type="text" name="bday" class="form-control" value="<%=customer.getBirthDate()%>" id="UpdateBday" placeholder="" style="width: 50%" disabled>

                            </div>

                            <div class="form-group">
                                <label >Gender</label>
                                <select name="gender" id="UpdateDecorationCategory" value="<%=customer.getGender()%>" class="form-control" disabled>
<%--                                    <option value="">Select</option>--%>
                                    <option selected value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>

                            </div>

                        </div>

                        </div>
                    <input type="number" style="display: none"  name="customerId" value=<%=customer.getCustomerId()%> >
                    <div class="form-group" style="float: right; margin-top: 10px">
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal" >Cancel</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<%--insert address--%>
<div class="modal fade" id="insertAddress" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="no" style="text-align: center;"> Insert New Address</h3>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="AddAddressServlet" method="post" enctype="multipart/form-data">

                    <div class="row">
                        <div class="form-group col-md-6">
                            <div class="form-group">
                                <textarea name="address2" style="width: 300px"></textarea>
                            </div>


                        </div>

                    </div>
                    <div class="form-group" style="float: right; margin-top: 10px">
                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal" >Cancel</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="deleteProfileModal" tabindex="-1" aria-labelledby="deleteProfileModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Delete profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                Are you sure want to delete the profile?
            </div>
            <div class="modal-footer">
                <form method="post" action="DeleteProfileServlet">
                    <input type="number" style="display: none"  name="customerId" value=<%=customer.getCustomerId()%> >
                <button type="submit" class="btn btn-danger" style="text-align: left;margin-right: 300px">Confirm</button>
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal" style="text-align: right">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>


<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>
<script src="assets/js/profileManagement.js"></script>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>