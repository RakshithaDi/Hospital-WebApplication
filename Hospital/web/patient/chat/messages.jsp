<%@page import="java.util.List"%>
<%@page import="model.Patient"%>
<%@page import="model.DBConnection"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Chat with Receptionist</title>
    <link rel="icon" href="../assets/img/logo.png">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin:700">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/Bootstrap-Chat.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Navbar-Dropdown-List-Item.css">
</head>

  <%
          
        //HttpSession se = request.getSession();
      //  session.setMaxInactiveInterval(3600); //Expires after 30 seconds inactivity
        String email = (String)session.getAttribute("email");
       // out.println("Hello " + email);
       ;
      
         if(session.getAttribute("email")==null)
        {
            response.sendRedirect("../auth/login.html");
        }
        
        
    
   
%>



<body style="background: #f2f2f2;">

    <nav class="navbar navbar-light navbar-expand-md" id="mainNav" style="background: #333333;">
        <div class="container"><a class="navbar-brand js-scroll-trigger" href="#">Central Hospitals</a><button data-toggle="collapse" class="navbar-toggler navbar-toggler-right" data-target="#navbarResponsive" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" value="Menu"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../appointments/appointments.jsp">Appointments</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../prescriptions/prescriptions.jsp">Prescriptions</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link active js-scroll-trigger" href="messages.html">Chat</a></li>
                    <li class="nav-item text-center d-xl-flex justify-content-xl-center align-items-xl-center nav-link js-scroll-trigger">
                        <div class="nav-item dropdown d-xl-flex justify-content-xl-center align-items-xl-center menu_links"><a class="dropdown-toggle active" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgba(255,255,255,0.75);border-color: rgba(0,0,0,0);font-size: 25px;font-family: Cabin, sans-serif;text-align: center;"><i class="fa fa-user-o" style="font-size: 24px;"></i></a>
                            <div class="dropdown-menu text-center"><a class="dropdown-item" href="../../PatientLogout" style="color: rgb(0,0,0);">Log out</a></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>



    <div class="container">
        <div class="card" style="background: rgb(72,72,72);margin-bottom: 50px;margin-top: 20px;height: 750px;">
            <div class="card-body" style="padding: 10px;">
                <div class="row" style="margin-right: 0px;margin-left: 0px;margin-top: 10px;">
                    <div class="col-xl-12" style="padding-left: 0px;padding-right: 0px;">
                        <div class="row" style="margin-right: 0px;margin-left: 0px;">
                            <div class="col">
                                <div class="card">
                                    <div class="card-body" style="padding: 10px;">
                                        <div class="col d-xl-flex justify-content-xl-center align-items-xl-center" style="padding-right: 0px;padding-left: 0px;height: 52px;margin-bottom: 10px;background: #f7f7f7;border-radius: 5px;border: 1px solid rgb(214,214,214) ;">
                                            <span class="text-center" style="color: rgb(0,0,0);font-family: Cabin, sans-serif;font-size: 18px;">Receptionist</span>
                                        </div>
                                        <div class="col overflow-auto" id="chatcont" style="height: 565px;border-radius: 5px;border: 1px solid rgb(214,214,214);padding-right: 20px;padding-left: 20px;">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group text-center d-xl-flex justify-content-xl-center align-items-xl-center" style="padding: 12px;">
                                    <input id="mtext" class="border rounded" type="text" style="font-family: Cabin, sans-serif;margin-right: 12px;height: 40px;width: 851px;">
                                    <button onclick="sendmessage()" class="btn btn-light" type="button" style="border-radius: 3px;">Send&nbsp;<i class="fa fa-send-o"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <footer style="background: #212121;">
        <div class="container text-center"><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Privacy Policy</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">About</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Contact</a><a href="../feedback/new-feedback.html" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Leave Feedback</a></div>
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

    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-analytics.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.5.0/firebase-firestore.js"></script>

    <script>
        var firebaseConfig = {
            apiKey: "AIzaSyCHTea8bbIN2e4GfiTHE7ywEqGKCkjkJY0",
            authDomain: "central-hospitals.firebaseapp.com",
            projectId: "central-hospitals",
            storageBucket: "central-hospitals.appspot.com",
            messagingSenderId: "77497319312",
            appId: "1:77497319312:web:5eb35ebf7cac318d41fd15",
            measurementId: "G-77Y7N8Y48G"
        };
        // Initialize Firebase
        firebase.initializeApp(firebaseConfig);
        firebase.analytics();
    </script>
     <%List<Patient> list2 = DBConnection.getPatientID(email); %>
            <%for(Patient plog:list2){ %> 
            
            
           
    <script src="chat-patient.js"></script>
    <script>initChat(<%=email%>,<%=plog.getFname()%> <%=plog.getLname()%>)</script>
    <script src="../notify.js"></script>
    <script>//notify('test email')</script>
    <%}%>
</body>

</html>