<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 22-Aug-21
  Time: 02:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@page import="java.sql.,java.util."%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel = "stylesheet"type = "text/css"href = "style.css" />
    <style>
        input[type=text],input[type=email],input[type=number] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border: 2px solid gold;
            background-color: gray;
            color: white;
            margin-left: 10px;

        }
        .button {
            background-color: red;
            border: none;
            color: white;
            padding: 16px 32px;
            text-align: center;
            font-size: 16px;
            margin: 4px 2px;
            opacity: 0.6;
            transition: 0.3s;
            display: inline-block;
            text-decoration: none;
            cursor: pointer;
        }

        .button:hover {opacity: 1}

    </style>
    <script>
        function updateFunction() {
            alert("Data Updated successfully...");
        }
    </script>
</head>
<jsp:include page="header.jsp"/>
<body>
<%
    String mid = request.getParameter("mid");
    String pid="",name="",email="",phone="",message="";

    try{

	    //Create Driver for connect to the database
        Class.forName("com.mysql.jdbc.Driver");

        //Create database connection and assign into the Connection class object call (con)
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msg", "root", "wsandundbcg0621*");

        PreparedStatement pst = con.prepareStatement("select * from msgdetails where mid='"+mid+"'");

        ResultSet rs = pst.executeQuery();

        if(rs.next()){
            pid = rs.getString("mid");
            name = rs.getString("name");
            email = rs.getString("email");
            phone = rs.getString("phone");
            message = rs.getString("message");
        }

    }catch(Exception ex){
        ex.printStackTrace();
    }

%>
<div style="border: 1px soild black;margin-left: 410px;margin-right:400px">
    <form action="updatemsg.jsp" method="post">
        <text style = "color:white;margin-left: 10px; font-family:Calibri; font-size:20px;"><b>ID :</b></text><br>
        <input type="text" name = "mid" required size="55" readonly value="<%=pid %>"><br>
        <text style = "color:white;margin-left: 10px;font-family:Calibri; font-size:20px;"><b>Name :</b></text><br>
        <input type="text" name = "name" required size="55" value="<%=name%>"><br>
        <text style = "color:white;margin-left: 10px;font-family:Calibri; font-size:20px;"><b>E-Mail :</b></text><br>
        <input type="email" name = "email" required size="55" value="<%=email%>"><br>
        <text style = "color:white;margin-left: 10px;font-family:Calibri; font-size:20px;"><b>Phone :</b></text><br>
        <input type="number" name = "phone" required size="55" value="<%=phone%>"><br>
        <text style = "color:white;margin-left: 10px;font-family:Calibri; font-size:20px;"><b>Message :</b></text><br>
        <input type="text" name = "message" required size="55" value="<%=message%>"><br>
</div>
<br>
<center>
    <b><input style="background-color:gold; font-size:20px;" class="button" name="btnsub" type="submit" onclick="updateFunction()" value="Update"></b>
</center>
</form>

<br><br><br><br>
<jsp:include page="footer.jsp"/>
</body>
</html>
<%
    if(request.getParameter("btnsub")!=null){
        String x,a,b,c,d;

        x = request.getParameter("mid");
        a = request.getParameter("name");
        b = request.getParameter("email");
        c = request.getParameter("phone");
        d = request.getParameter("message");

        try{
			//Create Driver for connect to the database
            Class.forName("com.mysql.jdbc.Driver");

            //Create database connection and assign into the Connection class object call (con)
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msg", "root", "wsandundbcg0621*");

            PreparedStatement pst = con.prepareStatement("update msgdetails set name=?,email=?,phone=?,message=? where mid='"+mid+"'");

            pst.setString(1, a);
            pst.setString(2, b);
            pst.setString(3, c);
            pst.setString(4, d);

            pst.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }

%>
