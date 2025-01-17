<%-- 
    Document   : login
    Created on : May 12, 2021, 4:48:30 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Log In</title>
    <link rel="icon" href="../assets/img/logo.png">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin:700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Navbar-Dropdown-List-Item.css">
</head>

  <%
          
       
        String message = (String)session.getAttribute("message");
        
        %>

<body id="page-top" style="background: rgb(255,255,255);">
    <nav class="navbar navbar-light navbar-expand-md" id="mainNav" style="background: #2c2c2c;">
        <div class="container"><a class="navbar-brand js-scroll-trigger" href="#">Central Hospitals</a><button data-toggle="collapse" class="navbar-toggler navbar-toggler-right" data-target="#navbarResponsive" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" value="Menu"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../index.html">Welcome</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" href="login.html" style="background: #434343;">Log in / Sign up</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div style="background: url(&quot;../assets/img/pexels-tara-winstead-7722646.jpg&quot;) center / cover no-repeat;height: 851px;">
        <div class="container" style="color: rgb(255,255,255);font-family: Cabin, sans-serif;padding-top: 98px;">
            <section class="login-clean" style="background: rgba(255,255,255,0);">
                <form method="post"  action="../../PatientLogin">
                    <div class="text-center"><span style="font-size: 34px;"><i class="far fa-hospital" style="font-size: 37px;"></i></span>
                        <h6>Login</h6>
                    </div>
                    <div class="form-group"><input class="border rounded-0 form-control form-control-sm" type="email" name="email" placeholder="Email" required="" style="background: rgb(255,255,255);"></div>
                    <div class="form-group"><input class="border rounded-0 form-control form-control-sm" type="password" name="password" placeholder="Password" required="" style="background: rgb(255,255,255);"></div>
                    <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="background: rgb(40,100,255);color: rgb(255,255,255);">Log In</button></div>
                    <div class="form-group text-center"><a class="btn btn-light" role="button" style="margin-top: 2px;" href="signup.html">Sign up<span>&nbsp;<i class="fas fa-angle-right"></i></span></a></div><a class="forgot" href="#">Forgot your email or password?</a><br>
                    <a style="color:red"><%=message%>!</a>
                </form>
            </section>
        </div>
    </div>
    <footer style="background: #212121;">
        <div class="container text-center"><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Privacy Policy</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">About</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Contact</a></div>
        <div class="container text-center">
            <p style="font-family: Cabin, sans-serif;color: rgb(154,154,154);">CENTRAL HOSPITALS © 2021</p>
        </div>
        <div class="container text-center" style="font-size: 20px;font-family: Lora, serif;"><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-facebook-square" style="color: rgb(255,255,255);"></i></a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-twitter-square" style="color: rgb(255,255,255);"></i></a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-instagram" style="color: rgb(255,255,255);"></i></a></div>
    </footer>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="../assets/js/grayscale.js"></script>
</body>

</html>
