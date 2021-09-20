<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>ContactUs | Royalro</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/Social-Icons.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <script>
        function updateFunction() {
            alert("Thanks! we'll get back to you soon..");
        }
    </script>
</head>

<body style="background-image: url(&quot;assets/img/sign%20up%20background.png&quot;);background-position: center;background-repeat: no-repeat;background-size: cover;">



<div>
    <div>
        <%--    Header--%>
            <%
                String type=(String)session.getAttribute("type");%>

            <% if(type.equals("customer")){ %>
            <jsp:include page="header.jsp"></jsp:include>
            <%} else { %>
            <jsp:include page="adminHeader.jsp"></jsp:include>
            <%}%>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-xl-4 offset-xl-0" style="width: 380px;margin-bottom: 10px">
                <form class="border rounded" method="post" style="margin-top: 10px;background-color: rgba(255,255,255,0.41);padding: 10px;height: 633.2px;">
                    <div class="form-group">
                        <div class="border rounded" style="height: 250px;margin: 0px;margin-top: 0px;margin-bottom: 0px;background-color: rgba(255,255,255,0.41);padding: 10px;">
                            <h2 class="text-left" style="margin-bottom: 10px;margin-top: 10px;font-size: 20px;padding: 10px;padding-bottom: 0px;">Address</h2>
                            <p style="padding: 10px;padding-top: 0px;">Heiyanthuduwa Cemetry,<br>No 950A,9<br> Samurdhi Mawatha</p>
                        </div>
                    </div>
                    <br>
                    <div class="border rounded" style="height: 335px;margin-top: 0px;margin-bottom: 0px;background-color: rgba(255,255,255,0.41);padding: 10px;">
                        <h2 class="text-left" style="margin-bottom: 0px;margin-top: 10px;font-size: 20px;padding: 10px;padding-bottom: 0px;">Mobile</h2><input class="form-control-plaintext" type="text" value="076 6785430" readonly="" style="padding: 10px;padding-top: 0px;">
                        <h2 class="text-left" style="margin-bottom: 0px;margin-top: 10px;font-size: 20px;padding: 5px;padding-bottom: 0px;">Link</h2><img class="rounded border" data-bs-hover-animate="pulse" style="width: 40px;height: 40px;padding:0px;padding-top: 0px;border-radius: 5px;margin-right: 2px" src="assets/img/fb.jpg"><img class="rounded border" data-bs-hover-animate="pulse" style="width: 40px;height: 40px;padding: 0px;padding-top: 0px;border-radius: 5px;margin-right: 2px" src="assets/img/wtzpthis.png"><img class="rounded border" data-bs-hover-animate="pulse" style="width: 40px;height: 40px;padding: 0px;padding-top: 0px;border-radius: 5px;margin-right: 2px" src="assets/img/msjrthis.png"></div>
                </form>
            </div>
            <div class="col-md-4 col-xl-4 offset-xl-0" style="background-color: rgba(255,255,255,0.14); width: 380px;margin-bottom: 10px; margin-top: 10px">
                <div class="form-group">
                    <h2 class="text-center" style="margin-bottom: 10px;margin-top: 10px;font-size: 20px;padding: 10px;">Location </h2>
                </div>
                <div class="mapouter"><div class="gmap_canvas"><iframe class="gmap_iframe" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=300&amp;height=500&amp;hl=en&amp;q=Sri Lanka, Samurdhi Mawatha&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe><a href="https://www.fnfgo.com/">FNF Go</a></div><style>.mapouter{position:relative;text-align:right;width:350px;height:556px;}.gmap_canvas {overflow:hidden;background:none!important;width:350px;height:556px;}.gmap_iframe {width:350px!important;height:556px!important;}</style></div>
            </div>
            <div class="col-md-4 col-xl-4 offset-xl-0">
                <form class="border rounded" method="post" style="margin-top: 10px;background-color: rgba(255,255,255,0.41);padding: 10px;height: 633.2px">
                    <div class="form-group"><input class="border rounded form-control" type="text" name="name" placeholder="Full Name" style="margin-top: 10px;" required></div>
                    <div class="form-group"><input class="border rounded form-control is-invalid" type="email" name="email" placeholder="Email" style="margin-top: 10px" required><input class="border rounded form-control" type="text" name="name" placeholder="subject" style="margin-top: 10px;" required></div>
                    <div class="form-group"><textarea class="border rounded form-control" name="message" placeholder="Message" rows="15" style="margin-top: 15px;margin-bottom: 25px" required></textarea></div>
                    <div class="form-group"><button class="btn btn-primary" type="submit" onclick="updateFunction()"  style="width: 70px"  >send </button></div>
                </form>
            </div>
        </div>
    </div>
</div>
<br>

<div class="modal fade" id="deleteDeco" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Thank you for getting in touch!</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                We appreciate you contacting us. One of our colleagues will get back in touch with you soon!Have a great day!
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal" style="text-align: right">Oky</button>
            </div>
        </div>
    </div>
</div>


    <%--    Footer--%>
    <jsp:include page="footer.jsp"></jsp:include>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>
</body>

</html>
