<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   
    <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/home.css">
    <!--FONT AWSOME-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Bad+Script&family=Poppins:ital,wght@1,200&display=swap" rel="stylesheet">

    <script>
        window.addEventListener('scroll',function(){
            const navbar = document.querySelector('.navbar');
            navbar.classList.toggle("sticky",window.scrollY > 50);
        });

  </script>
</head>
<body> 
    <%@include file="scroll.jsp"%>
    <%!
        OracleConnection oconn;
        OraclePreparedStatement opst;
        OracleStatement ost;
        OracleResultSet ors; 
        OracleResultSetMetaData orsmd;
        String q;       
        String email1;
        String name1;
        %>
        <%
            email1=request.getParameter("email1");
                //STEP 1 : REGISTERING OF THE REQUIRED DRIVER WITH THE JAVA PROGRAM
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                
                //STEP 2: INSTANTIATING THE CONNECTION OBJECT 
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                
                //STEP 3: CREATING THE QUERY
                q = "select name from USERS where email=?";
                opst=(OraclePreparedStatement)oconn.prepareStatement(q);
                opst.setString(1,email1);
//                
//                //STEP 4: INSTANTIATING STATEMENT OBJECT FOR EXECUTING SQL QUERIES
//                ost =(OracleStatement) oconn.createStatement();
                
                //STEP 5: EXECUTING THE STATEMENT AND FILL UP THE RESULTSET
                ors = (OracleResultSet)opst.executeQuery();
                
//                //STEP 6: GETTING SYSTEM INFORMATION ABOUT THE FETCHED TABLE
//                orsmd = (OracleResultSetMetaData)ors.getMetaData();
                
            
            %>
             <%
         while(ors.next())
        {
            
            for(int i = 1; i <= 1; i ++)
                {%>
                 <small><% name1 =ors.getString(1);%></small>
                 
                <%}
        }
      %>
             <%
               
                HttpSession sess=request.getSession(true);
                sess.setAttribute("mail",email1);
                sess.setAttribute("name",name1);
                %>
            
    <!--NAVBAR-->
    <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="padding-left: 20px;">
  <div class="container-fluid">
    <img src="../images/newlogo.png" style="width: 5%;">
        <span style="font-size: 25px;color:white;">
        <i> Pearl <small style="color:rgb(247, 182, 4);font-size: 20px;">Cruise</small> Line</i>
        </span>


    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item" style="padding-right: 20px;">
          <a class="nav-link active text-white bar" aria-current="page" href="home.jsp">Home </a>
        </li>
        
        <li class="nav-item" style="padding-right: 20px;">
          <a class="nav-link active text-white bar" href="cruise_deals.jsp">Cruise Deals </a>
        </li>
        <li class="nav-item" style="padding-right: 20px;">
          <a class="nav-link active text-white bar" href="why_cruising.jsp">Why Pearl?</a>
        </li>
        <li class="nav-item" style="padding-right: 20px;">
          <a class="nav-link active text-white bar" href="blogs.jsp">Cruise Blogs </a>
        </li>
        
        <li class="nav-item" style="padding-right: 20px;">
          <a class="nav-link active text-white bar" href="contact.jsp">Contact us </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="log_out.jsp" style="color: rgb(173, 165, 165);">Log out</a>
          </li>
      </ul>
    </div>
  </div>
</nav>

  <!--MINI-NAV-->    
  <div class="p-3"style="background-color:rgb(248, 246, 244);" data-aos="fade-left"
       data-aos-duration="2000">
    <span>
    <a href="review.jsp" style="padding: 20px;color: black;"><small>Cuise Reviews</small></a>
    <small style="padding: 20px;color: black;">Enquire Now </small>
    <span style="padding: 20px;"><i class="fas fa-phone"></i><small> +23-4587-5269</small></span>
    <span style="padding: 20px;"><i class="fas fa-envelope"></i><small> pearlcruise@gmail.com</small></span>
    <span style="float:right;padding-right: 155px;">Welcome <%out.println(sess.getAttribute("name"));%>
    
     
    </span>
  </span>
  </div> 

     
    <!--CAROUSEL-->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="../images/i.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block label-box" data-aos="fade-left">
            <h5>What is cruise tourism?</h5>
            <p>Cruise tourism can be defined as a luxurious form of travelling, involving an all-inclusive holiday on a cruise ship of at least 48 hours</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="../images/i3.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block label-box">
            <h5>What to experience?</h5>
            <p>It enables tourists to experience a multi-centre holiday, whereby they spend time at various destinations throughout their trip.</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="../images/i5.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block label-box">
            <h5>About cruise ships</h5>
            <p>Cruise ships vary from small yachts to mega ships and can take place on the ocean, river or fjords.</p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <!--TAGLINE-->
    <div class="container-fluid m-0 p-3" style="background-color: white;" data-aos="fade-right">
       <center><h4 class="tag">BOOK YOUR TICKET TODAY</h4></center>
    </div>
    <!--CARDS-->
    <center>
    <div class="row" data-aos="fade-up" data-aos-duration="3000">
        <div class="col">
            <div class="card" style="width: 25rem;">
                <img src="../images/c2.jpg" style="height: 270px;" class="card-img-top" alt="...">
                <div class="card-body" data-aos="fade-up" data-aos-duration="2000">
                  <h5 class="card-title">UPGRADE PACKAGE</h5>
                  <p class="card-text">Elevate your cruise experience with our widest beverage selection onboard, more specialty dining, unlimited Wi-Fi and more shore excursion credits.</p>
                  <a href="https://journalsofindia.com/cruise-tourism/#:~:text=Definition,at%20several%20ports%20or%20cities." 
                     class="btn1">Click here</a>
                </div>
              </div>
          </div>
        <div class="col">
            <div class="card" style="width: 25rem;">
                <img src="../images/c5.jpg" style="height: 270px;" class="card-img-top" alt="...">
                <div class="card-body" data-aos="fade-up" data-aos-duration="2000">
                  <h5 class="card-title">50% OFF DEPOSITS</h5>
                  <p class="card-text">Reserve your 7+ day vacation today with a $125 deposit per person when you book a club balcony suite, balcony, oceanview or interior stateroom.</p>
                  <a href="https://tourismnotes.com/cruise-tourism/" class="btn1">Click here</a>
                </div>
              </div>
        </div>
        <div class="col">
            <div class="card" style="width: 25rem;">
                <img src="../images/c6.jpg" style="height: 270px;" class="card-img-top" alt="...">
                <div class="card-body" data-aos="fade-up" data-aos-duration="2000">
                  <h5 class="card-title">CRUISE DEALS</h5>
                  <p class="card-text">You won't want to miss out on this sea of savings. Get Free 2nd Guest on all ships to all destinations! Book today and enjoy more for free. </p>
                  <a href="https://tourismteacher.com/cruise-tourism/" class="btn1">Click here</a>
                </div>
              </div>
        </div>
        </div>
    </div>
  </center>
  <!--CARDS-->
    <div class="container-fluid mt-4" style="padding-left: 35px;padding-right: 35px;">
        <div class="card mb-3" style="max-width: 100%;">
            <div class="row g-0">
              <div class="col-md-5" data-aos="zoom-in" data-aos-duration="2000">
                <img src="../images/card3.jpg" class="img-fluid rounded-start" alt="...">
              </div>
              <div class="col-md-7">
                <div class="card-body" data-aos="fade-left" data-aos-duration="2000">
                  <h5 class="card-title mt-2 mb-3">FASCINATING DUBAI WITH 7 NIGHTS MSC WORLD EUROPA</h5>
                  <p class="card-text">Enjoy fun filled vacation in tourist paradise of U.A.E. for 03 nights in Dubai and 01 night 
                      in Abu Dhabi with 3 nights cruise on MSC World Europa to The Emirate of Dubai & Abu Dhabi to 
                      experience loads of fun, shopping and fine dining. Wellness, sport, entertainment and culture: a 
                      thousand different experiences on a unique holiday await you on board.During recent decades, cruise tourism has seen enormous growth in both passenger numbers and destinations. The downside of this growth is the negative impact on environment and society.  </p>
                  <a href="https://www.intechopen.com/chapters/58056">Learn more <i class="fa-solid fa-arrow-right"></i></a>
                </div>
              </div>
            </div>
         </div>
      </div>
      <div class="container-fluid m-1" style="padding-left: 30px;padding-right: 35px;">
        <div class="card mb-3" style="max-width: 100%;">
            <div class="row g-0">
              <div class="col-md-7">
                <div class="card-body" data-aos="fade-right" data-aos-duration="2000">
                  <h5 class="card-title mt-2 mb-3">3 NIGHTS SPECTACULAR SINGAPORE WITH GENTING DREAM CRUISE</h5>
                  <p class="card-text">Singapore is an ideal holiday destination for the entire family. Experience the best of Singapore staying 3 nights exploring this vibrant city and embark on a 2 or 3 night cruise on Genting Dream.This is even more true, if the destination considered has a fragile ecosystem. Associating the paradigm of sustainable development with the practice of cruise tourism might represent a solution to the problems faced by the industry. </p>
                  <a href="https://www.futuremarketinsights.com/reports/cruise-tourism-sector-overview">Learn more <i class="fa-solid fa-arrow-right"></i></a>
                </div>
              </div>
              <div class="col-md-5" data-aos="zoom-in" data-aos-duration="2000">
                <img src="../images/card.jpg" class="img-fluid rounded-end" alt="...">
              </div>
            </div>
          </div>
    </div>

    <!--FOOTER-->
    <div class="row" style="background-color: rgb(25, 25, 124); padding-left: 20px;margin-right: 0px;">
      <div class="col-md-4 text-white pt-3">
        <img src="../images/newlogo.png" class="logo1">
          <span style="font-size: 25px;color:white;">
          <i> Pearl <small style="color:rgb(247, 182, 4);font-size: 20px;">Cruise</small> Line</i>
          </span>
        <h5 style="padding-left: 25px;" class="pt-3">PEARLCRUISELINE - A DIVISION OF ODYSSEY VACATIONS PVT. LTD.</h5>
        <p class="mt-3 footer" style="padding-left: 25px;">201 - 202, 2nd Floor, Jewel Tower<br> Lane No. 5,
        Koregaon Park<br> Pune 411001</p>
        <p class="footer" style="padding-left: 25px;"><i class="fas fa-phone"></i>+23-4587-5269</p>
        <p class="footer" style="padding-left: 25px;"><i class="fas fa-envelope"></i> pearlcruise@gmail.com</p>
      </div>

      <div class="col-md-4 text-white p-4">
        <h4>PEARLCRUISELINE PARTNERS</h4>

            <h5>Bangalore</h5>
            <p style="margin-bottom: 0px;" class="footer">BIT Air Travels Pvt. Ltd.</p>
            <p style="margin-bottom: 0px;" class="footer"><i class="fas fa-phone"></i> +91 96064 52955 / +91 99000 96898 / +91 98452 27249</p>
            <p class="footer"><i class="fas fa-envelope"></i> bangalore@cruisebay.in</p>

            <h5>Chennai</h5>
            <p style="margin-bottom: 0px;" class="footer">Adyar Travel Bureau</p>
            <p style="margin-bottom: 0px;" class="footer"><i class="fas fa-phone"></i> +91-98410 02681 / 044-4907 9100 / +91-98844 92684</p>
            <p class="footer"><i class="fas fa-envelope"></i> chennai@cruisebay.in</p>

            <h5>Chandigarh</h5>
            <p style="margin-bottom: 0px;" class="footer">STPL Vacations - a Div. of Shergill Travels Pvt. Ltd.</p>
            <p style="margin-bottom: 0px;" class="footer"><i class="fas fa-phone"></i> +91-8427672550 / +91-8283954399 / +91-172-5000600 / +91-172-5000500</p>
            <p class="footer"><i class="fas fa-envelope"></i> chd@cruisebay.in</p>
            <span>
              <a href=""><i class="fa-brands fa-square-facebook"></i></a>
              <a href=""><i class="fa-brands fa-square-instagram"></i></a>
              <a href=""><i class="fa-brands fa-youtube"></i></a>
              <a href=""><i class="fa-brands fa-linkedin"></i></a>
              <a href=""><i class="fa-brands fa-square-twitter"></i></a>
              <a href=""><i class="fa-brands fa-square-pinterest"></i></a>
            </span>

      </div>
      <div class="col-md-1 v mt-3"></div>
      <div class="col-md-3 text-white p-4">
        
        <a href="luxury.jsp">Luxury Cruises</a><br>
        <a href="premium.jsp">Premium Cruises</a><br>
        <a href="deluxe.jsp">Deluxe Cruises</a><br>
        <a href="river.jsp">River Cruises</a><br>
        <a href="family.jsp">Family Cruises</a>
      </div>
    </div>

    <!--last footer-->
    <div style="background-color: rgb(247, 182, 4);" class="p-3"><p style="margin-bottom: 0px;">© PearlCruiseLine - A division of Odyssey Vacations Pvt. Ltd. All rights reserved.  |  Sitemap  |  Privacy Policy</p></div>
  <!--JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</body>
</html>