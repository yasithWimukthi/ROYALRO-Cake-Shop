<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 25-Aug-21
  Time: 10:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Feedback</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>



<body style="background-image: linear-gradient(to right,rgb(255,100,193), rgb(255,255,255));">
<jsp:include page="header.jsp"></jsp:include>

<label style="height: 50px;font-size: 36px;margin-left: 300px;font-family: ABeeZee, sans-serif;text-align: center;">Customer Feedback Details</label>
<div style="width: 1000px;height: 500px;margin-left: 40px;">
    <div class="table-responsive" style="margin-top: 50px;background-color: #f9827f; margin-left: 100px; margin-top: 80px; height: 400px; width: 900px">
        <table class="table" style="padding: 50px">
            <thead style="background-color: #f4476b;">
            <tr style="margin: 50px">
                <th><center>Name</center></th>
                <th><center>E-mail</center></th>
                <th><center>Subject</center></th>
                <th><center>Message</center></th>
            </tr>
            </thead>
            <tbody>
            <tr style="margin: 50px">
                <td><center>Kasun Perera</center></td>
                <td><center>kasunP@gmail.com</center></td>
                <td><center>Request for more item images</center></td>
                <td><center>I want more images of Teenagers Decoration.</center></td>
            </tr>
          <%--  <tr>
                <td><center>Ashan Jayawardhana</center></td>
                <td><center>ashan@gmail.com</center></td>
                <td><center>Request for more images</center></td>
                <td><center>I want more images of Teenagers Decoration.</center></td>
            </tr> --%>
            </tbody>
        </table>
    </div>
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>






