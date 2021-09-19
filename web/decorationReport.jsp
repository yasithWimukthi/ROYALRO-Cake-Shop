<%@ page import="java.util.Date" %>
<%@ page import="com.royalro.service.DecorationService" %>
<%@ page import="com.royalro.model.DecorationItem" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Sandun Dharmadasa
  Date: 9/16/2021
  Time: 6:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    String type=(String)session.getAttribute("type");
    if(type.equals("customer")){
        String redirectURL = "http://localhost:8080/web_war_exploded/home.jsp";
        response.sendRedirect(redirectURL);
    }

%>

<div>
    <div>
        <%--Header--%>
            <jsp:include page="adminHeader.jsp"></jsp:include>
    </div>


    <%--    main header--%>


    <%--    Navigation --%>

    <div style="margin-left: 10px;text-decoration: none; ">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp" style="text-decoration: none;color: #5c636a;"><span>Home</span></a></li>
            <li class="breadcrumb-item"><a href="adminDashboard.jsp" style="text-decoration: none;color: #5c636a;"><span>Admin</span></a></li>
            <li class="breadcrumb-item"><a href="DecorationManagementAdmin.jsp" style="text-decoration: none;color: #5c636a;"><span>Item Management</span></a></li>
            <li class="breadcrumb-item"><a href="decorationReport.jsp" style="text-decoration: none;color: #5c636a;"><span>Report Genaration</span></a></li>
        </ol>
    </div>

    <div class="main">
        <%--    side navigation--%>
        <div class="container x-open-sidebar" style="max-width: 1350px">
            <div id="sidebar">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                    <li><a href="adminDashboard.jsp">Admin Page</a></li>
                </ul>
            </div>

            <%--    Main area--%>

            <div class="main-content">
                <div class="swipe-area" style="background-color: rgb(255,255,255);"></div>
                <a id="sidebar-toggle" data-toggle=".container" href="#" style="background-color: #ed4dc0;">
                    <span class="bar"></span>
                    <span class="bar" style="background-color: rgb(254,254,254);"></span>
                    <span class="bar"></span>
                </a>
                <div class="content" style="padding-left: 56px;">

                    <div class="shadow-lg" style="margin: 51px;background-color: #ffffff;border-radius: 20px;">
                        <div style="padding: 22px;">
                            <div id="printArea">
                                <section>
                                    <h2 class="text-center" style="padding: 14px;">ROYALRO DECORATION SERVICES LIST</h2>
                                    <h3 class="text-center" style="font-size: 20px;">Date & Time : <%= (new Date()).toString()%></h3>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="tblData">
                                            <thead class="text-center">
                                            <tr class="text-center">
                                                <th>Decoration ID</th>
                                                <th>Decoration Name</th>
                                                <th>Category</th>
                                                <th>Description</th>
                                                <th>Price</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%
                                                DecorationService ds = new DecorationService();
                                                List<DecorationItem> itemsList = ds.getAllDecorations();
                                                for(DecorationItem item : itemsList) {
                                            %>

                                            <tr class="text-center">
                                                <td class="text-left" ><%=item.getDecorationId()%></td>
                                                <td class="text-left" style="text-align: left"><%=item.getName()%></td>
                                                <td class="text-left" style="text-align: left"><%=item.getCategory()%></td>
                                                <td class="text-left" style="text-align: left"><%=item.getDescription()%></td>
                                                <td class="text-left"><%=item.getPrice()%></td>

                                            </tr>
                                            <%}%>
                                            </tbody>
                                        </table>
                                    </div>
                                </section>
                            </div>
                            <section class="text-right">
                                <div><button id="pdf" name="pdf" onclick="downloadPDF()" class="btn btn-primary text-xl-center" type="button" style="margin: 15px;background-color: #ff0000;width: 250px;">Download PDF<i class="fa fa-file-pdf-o" style="font-size: 24px;width: 177px;"></i></button>
                                    <button id="excel" name="excel" onclick="downloadExcel('tblData', 'DecorationList')"class="btn btn-primary text-xl-center" type="button" style="margin: 15px;width: 250px;background-color: #008000;">Download Excel<i class="fa fa-file-excel-o" style="font-size: 24px;width: 177px;"></i></button></div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%--js--%>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>
<script src="assets/js/Side-Swipe-Menu-1.js"></script>
<script src="assets/js/Side-Swipe-Menu.js"></script>
<script src="assets/js/word-limit.js"></script>
<script src="assets/js/itemManagement.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>

<script >
    function downloadPDF(){
        var element = document.getElementById("printArea");
        var opt = {
            margin:       0.5,
            filename:     'DecorationList.pdf',
            image:        { type: 'jpeg', quality: 0.98 },
            html2canvas:  { scale: 3 },
            jsPDF:        { unit: 'in', format: 'A4', orientation: 'landscape' }
        };
        // New Promise-based usage:
        html2pdf().from(element).set(opt).save();
    }
    function downloadExcel(tableID, filename = ''){
        var downloadLink;
        var dataType = 'application/vnd.ms-excel';
        var tableSelect = document.getElementById(tableID);
        var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
        // Specify file name
        filename = filename?filename+'.xls':'excel_data.xls';
        // Create download link element
        downloadLink = document.createElement("a");
        document.body.appendChild(downloadLink);
        if(navigator.msSaveOrOpenBlob){
            var blob = new Blob(['\ufeff', tableHTML], {
                type: dataType
            });
            navigator.msSaveOrOpenBlob( blob, filename);
        }else{
            // Create a link to the file
            downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
            // Setting the file name
            downloadLink.download = filename;
            //triggering the function
            downloadLink.click();
        }
    }
</script>


</body>

</html>
