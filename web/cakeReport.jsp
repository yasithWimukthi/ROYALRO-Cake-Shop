<%@ page import="java.util.Date" %>
<%@ page import="com.royalro.service.CakeService" %>
<%@ page import="com.royalro.model.Cake" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Yasith Wimukthi
  Date: 9/17/2021
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cake|Report </title>
</head>
<body>

<%
    String type=(String)session.getAttribute("type");
    if(type.equals("customer")){
        String redirectURL = "http://localhost:8080/web_war_exploded/index.jsp";
        response.sendRedirect(redirectURL);
    }

%>

<div>
    <div>
        <%--Header--%>
            <jsp:include page="header.jsp"></jsp:include>
    </div>


    <%--    main header--%>


    <%--    Navigation --%>

    <div style="margin-left: 10px;text-decoration: none; ">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.jsp" style="text-decoration: none;color: #5c636a;"><span>Home</span></a></li>
            <li class="breadcrumb-item"><a href="adminDashboard.jsp" style="text-decoration: none;color: #5c636a;"><span>Admin</span></a></li>
            <li class="breadcrumb-item"><a href="cakeAdmin.jsp" style="text-decoration: none;color: #5c636a;"><span>Cake Management</span></a></li>
            <li class="breadcrumb-item"><a href="#" style="text-decoration: none;color: #5c636a;"><span>Report Genaration</span></a></li>
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
                                    <h2 class="text-center" style="padding: 14px;">ROYALRO CAKE LIST</h2>
                                    <h3 class="text-center" style="font-size: 20px;">Date & Time : <%= (new Date()).toString()%></h3>
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="tblData">
                                            <thead class="text-center">
                                            <tr class="text-center">
                                                <th>Cake ID</th>
                                                <th>Cake Name</th>
                                                <th>Category</th>
                                                <th>Description</th>
                                                <th>Weight</th>
                                                <th>Price</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%
                                                CakeService cakeService = new CakeService();
                                                List<Cake> cakesList = cakeService.getAllCakes();

                                                for(Cake cake :cakesList) {
                                            %>

                                            <tr class="text-center">
                                                <td class="text-left" ><%=cake.getCakeId()%></td>
                                                <td class="text-left" style="text-align: left"><%=cake.getName()%></td>
                                                <td class="text-left" style="text-align: left"><%=cake.getCategory()%></td>
                                                <td class="text-left" style="text-align: left"><%=cake.getDescription()%></td>
                                                <td class="text-left" style="text-align: left"><%=cake.getWeight()%></td>
                                                <td class="text-left"><%=cake.getPrice()%><br></td>
                                            </tr>
                                            <%}%>
                                            </tbody>
                                        </table>
                                    </div>
                                </section>
                            </div>
                            <section class="text-right">
                                <div><button id="pdf" name="pdf" onclick="downloadPDF()" class="btn btn-primary text-xl-center" type="button" style="margin: 15px;background-color: #ff0000;width: 250px;">Download PDF<i class="fa fa-file-pdf-o" style="font-size: 24px;width: 177px;"></i></button>
                                    <button id="excel" name="excel" onclick="downloadExcel('tblData', 'ProductList')"class="btn btn-primary text-xl-center" type="button" style="margin: 15px;width: 250px;background-color: #008000;">Download Excel<i class="fa fa-file-excel-o" style="font-size: 24px;width: 177px;"></i></button></div>
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
            filename:     'cakesList.pdf',
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
