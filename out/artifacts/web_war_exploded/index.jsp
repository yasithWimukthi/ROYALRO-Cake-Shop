<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Royalro | Home</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/best-carousel-slide.css">
    <link rel="stylesheet" href="assets/css/Features-Boxed.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Dancing+Script" />
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<a href="adminDashboard.jsp" >View admin dashboard</a>



<section id="carousel">
    <div class="carousel slide" data-bs-ride="carousel" id="carousel-1">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="bg-light border rounded border-light pulse animated hero-nature carousel-hero jumbotron py-5 px-4">
                    <h1 class="hero-title">CAKE </h1>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p><a class="btn " role="button" href="#" style="background-color: #ffbdd4; padding: 10px;box-shadow: 5px 10px 18px #888888;">Show more</a></p>
                </div>
            </div>
            <div class="carousel-item">
                <div class="bg-light border rounded border-light pulse animated hero-photography carousel-hero jumbotron py-5 px-4">
                    <h1 class="hero-title">DECORATIONS</h1>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p><a class="btn " role="button" href="#" style="background-color: #ffbdd4; padding: 10px;box-shadow: 5px 10px 18px #888888;">Show more</a></p>
                </div>
            </div>
            <div class="carousel-item ">
                <div class="bg-light border rounded border-light pulse animated hero-technology carousel-hero jumbotron py-5 px-4">
                    <h1 class="hero-title">REATAIL PRODUCTS</h1>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p class="hero-subtitle"></p>
                    <p><a class="btn " role="button" href="#" style="background-color: #ffbdd4; padding: 10px;box-shadow: 5px 10px 18px #888888;">Show more</a></p>

                </div>
            </div>
        </div>
        <div>
            <a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span><span class="visually-hidden">Next</span>
            </a>
        </div>
        <ol class="carousel-indicators">
            <li data-bs-target="#carousel-1" data-bs-slide-to="0"></li>
            <li data-bs-target="#carousel-1" data-bs-slide-to="1"></li>
            <li data-bs-target="#carousel-1" data-bs-slide-to="2" class="active"></li>
        </ol>
    </div>
</section>
<section class="features-boxed">
    <div class="container">
        <div class="intro">
            <h2 class="text-center">Features </h2>
            <p class="text-center"></p>
        </div>
        <div class="row justify-content-center features">
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="fa fa-map-marker icon"></i>
                    <h3 class="name">Order everywhere</h3>
                    <p class="description">Now you can make order quickly by using our website.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="fa fa-clock-o icon"></i>
                    <h3 class="name">Always available</h3>
                    <p class="description">You can order any product any time by using our website.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="fa fa-list-alt icon"></i>
                    <h3 class="name">Customizable </h3>
                    <p class="description">Now you can customize cake according to your needs.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="fa fa-money icon"></i>
                    <h3 class="name">Price </h3>
                    <p class="description">We have a large collection of products. You can search products withing your budget.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="fa fa-plane icon"></i>
                    <h3 class="name">Fast </h3>
                    <p class="description">Now you can make your orders quickly and we will process your orders within an hour.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="fa fa-phone icon"></i>
                    <h3 class="name">Mobile-first</h3>
                    <p class="description">For further details, you can simply contact us via a call.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-init.js"></script>

</body>
</html>