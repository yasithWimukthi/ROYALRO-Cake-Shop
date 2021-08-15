<%--
  Created by IntelliJ IDEA.
  User: shalitha
  Date: 8/15/2021
  Time: 12:55 AM
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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Dancing+Script">
  <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
  <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
  <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
  <link rel="stylesheet" href="assets/css/styles.css">

</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="login-clean " style="margin: 0px;height: 550px;background: url(&quot;assets/img/sign%20up%20background.png&quot;) center / cover no-repeat;" >
    <form method="post" style="opacity: 1;background-color: rgba(255,255,255,0.57);filter: sepia(0%);" id="login-form">
        <h2 class="sr-only">Login Form</h2>
        <div class="illustration"><i class="icon ion-ios-navigate"></i></div>
        <div class="form-group">
            <input id="email-input" class="form-control" type="email" placeholder="User Name" style="opacity: 0.97;">
        </div>
        <div id="email-error" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* E-mail is required.</div>
        <div class="form-group">
            <input id="password-input" class="form-control" type="password" name="password" placeholder="Password" style="margin-top: 10px;">
        </div>
        <div id="password-error" style="margin: 0 auto;width: 80%;color:red;visibility: hidden;">* Password is required.</div>
        <div style="text-align: center;">
            <button class="btn btn-primary btn-block " type="submit" >Log In</button>
        </div>
        <a class="forgot" href="register.jsp">Sign Up</a>
    </form>
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/login.js"></script>
</body>

</html>
