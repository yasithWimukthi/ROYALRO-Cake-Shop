<%--
  Created by IntelliJ IDEA.
  User: Yasith Wimukthi
  Date: 8/12/2021
  Time: 10:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Royalro | Sign Up</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica&amp;display=swap">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Icon-Input.css">
    <link rel="stylesheet" href="assets/css/Rounded-Button.css">
    <link rel="stylesheet" href="assets/css/sign-up-styles.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="margin: 0px;height: 850px;background: url(&quot;assets/img/sign%20up%20background.png&quot;) center / cover no-repeat;padding-top: 0;">
    <section style="margin: 0px;height: 850px;background: url(&quot;assets/img/sign%20up%20background.png&quot;) center / cover no-repeat;padding-top: 0;">
        <div style="width: 70%;height: 70%;background: var(--bs-white);margin-top: 0;margin-bottom: 0;margin-right: auto;margin-left: auto;opacity: 0.67;filter: blur(0px);border-radius: 50px;transform: translateY(15%);padding-top: 15px;border-color: var(--bs-warning);border-bottom-color: var(--bs-red);">
            <div style="border-top-width: 0;">
                <p style="text-align: center;font-family: Aclonica, sans-serif;color: var(--bs-dark);">Sign Up</p>
                <form method="post" action="SignUpServlet" id="signUpForm">
                    <div class="input-group" style="margin: 0 auto;width: 80%;">
                        <div class="input-group-prepend">
                            <span style="height: 38px" class="input-group-text icon-container"><i class="fa fa-user"></i></span>
                        </div>
                        <input id="name-input" class="form-control form-control" type="text" placeholder="Name">
                    </div>
                    <div id="name-error" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Name is required.</div>
                    <div class="input-group" style="margin: 0 auto;width: 80%;">
                        <div class="input-group-prepend">
                            <span style="height: 38px" class="input-group-text icon-container"><i class="fa fa-envelope"></i></span>
                        </div>
                        <input id="email-input" class="form-control form-control" type="text" placeholder="E-mail">
                    </div>
                    <div id="email-error" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* An valid E-mail is required.</div>
                    <div class="input-group" style="margin: 0 auto;width: 80%;">
                        <div class="input-group-prepend">
                            <span style="height: 38px" class="input-group-text icon-container"><i class="fa fa-phone" ></i></span>
                        </div>
                        <input id="mobile-input" class="form-control form-control" type="text" placeholder="Mobile Number" >
                    </div>
                    <div id="mobile-error" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Mobile number is required. Mobile number should contain 10 digits.</div>
                    <div class="input-group" style="margin: 0 auto;width: 80%;">
                        <div class="input-group-prepend">
                            <span style="height: 38px" class="input-group-text icon-container"><i class="fa fa-key"></i></span>
                        </div>

                        <input id="password-input" class="form-control form-control" type="text" placeholder="Password" onkeyup="onPasswordChange(this)" >

                        <input id="password-input" class="form-control form-control" type="text" placeholder="Password" onkeypress="onPasswordChange(this)" >

                    </div>
                    <div id="password-error" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Password is required.</div>
                    <div class="input-group" style="margin: 0 auto;width: 80%;">
                        <div class="input-group-prepend">
                            <span style="height: 38px" class="input-group-text icon-container"><i class="fa fa-key"></i></span>
                        </div>
                        <input id="password-confirm-input" class="form-control form-control" type="text" placeholder="Password" >
                    </div>
                    <div id="password-confirm-error" style="margin: 0 auto;width: 80%;margin-bottom: 10px;color:red;visibility: hidden;">* Password does not match.</div>
                    <div style="margin: 0 auto;margin-top: 10px;width: 60%;height: auto;">
                        <p id="length-check"><i class="fa fa-check" style="margin-right: 10px;"></i>Password must have at least 8 characters.</p>

                        <p id="uppercase-check"><i class="fa fa-check" style="margin-right: 10px;"></i>Password must have at least an uppercase letter.</p>
                        <p id="special-char-check"><i class="fa fa-check" style="margin-right: 10px;"></i>Password must have at least a special character.</p>

                        <p><i class="fa fa-check" style="margin-right: 10px;"></i>Password must have at least an uppercase letter.</p>
                        <p><i class="fa fa-check" style="margin-right: 10px;"></i>Password must have at least a special character.</p>

                    </div>
                    <div style="margin: 0 auto;width: 50px;">
                        <button id="signUpBtn" class="sign-up-btn" type="submit" >Sign Up</button>
                    </div>
                </form>
            </div>
        </div>
</section>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/signup.js"></script>
</body>
</html>
