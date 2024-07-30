<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--AOS-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!--BOOTSTRAP CSS-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="../css/home.css">
  <link rel="stylesheet" href="../css/deals.css">
  <link rel="stylesheet" href="../css/modal.css">
  
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
   <style>
                 table,th,td 
           {
             padding: 10px 30px;
             border: 1px solid grey;
             border-collapse: collapse;
             margin-left: auto;
             margin-right: auto;
           }
            </style>
    <body>
       <%@include file="scroll.jsp"%>
    <%
      HttpSession sess=request.getSession(false);                
      %>
                <%!
            OracleConnection oconn;
            OraclePreparedStatement opst;
            OracleStatement ost;
            OracleResultSet ors; 
            OracleResultSetMetaData orsmd;
            String q;
            String p,t,d,f,pr;
            %>
            <% 
                p=request.getParameter("val");
                t=request.getParameter("tag");
                d=request.getParameter("dest");
                f=request.getParameter("from");
                pr=request.getParameter("price");
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                q = "select * from CRUISE_DETAILS where PACKAGE=?";
                opst=(OraclePreparedStatement)oconn.prepareStatement(q);
                opst.setString(1,p);              
                ors = (OracleResultSet)opst.executeQuery();
                orsmd = (OracleResultSetMetaData)ors.getMetaData();
                
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

  <!--MINI_NAV-->
  <div style="padding: 20px;background-color:rgb(248, 246, 244);">
    <span>
    <a href="review.jsp" style="padding: 20px;color: black;"><small>Cuise Reviews</small></a>
    <a href="" style="padding: 20px;color: black;"><small>Enquire Now</small></a>
    <span style="padding: 20px;"><i class="fas fa-phone"></i><small> +23-4587-5269</small></span>
    <span style="padding: 20px;"><i class="fas fa-envelope"></i><small> pearlcruise@gmail.com</small></span>
    
  </span>
  </div>
  
  
  <!--INDIA_IMAGE-->
  <div class="container-fluid image"  style="padding: 0px;">
      <img src="../images/hh.jpg" class="img-fluid" width="100%" height="30%">
  </div>
  <!--BACK BUTTON-->
  <div class="container-fluid p-3" style="margin-left: 68px;">
      <a href="hawai.jsp">
          <small style="color:rgb(25, 25, 124);"><b><i class="fas fa-long-arrow-left" style="color:rgb(25, 25, 124);"></i> BACK TO CRUISE DEALS</b>
          </small>
      </a>
  </div>
  
  <!--DESCRIPTION-->
  <div class="container-fluid">
                    <div class="row" style="margin: 3px 60px;">
                        <div class="col-md-8" data-aos="fade-left" data-aos-duration="2000">
                            <p><%out.println(t);%></p>
                            <h3><%out.println(d);%></h3>
                            <h4 style="color:rgb(82, 72, 72)"><%out.println(f);%></h4>
                                                        <p>Feel free to let the gentle breezes of Waikīkī stir up your 
                                                            Aloha spirit as you set out to explore the Hawaiian islands 
                                                            with Norwegian. Soak up the vibes as you sink your toes in a 
                                                            black-sand beach before your trek to the top of Haleakalā — 
                                                            Maui’s massive volcano. When the sun sets, get ready for 
                                                            unforgettable stargazing well past midnight. You'll have plenty of time to explore the culture, sights and local flavour of five unique ports including O`ahu, Maui, Hilo, Kona and Kaua`i. Looking to make the most out of your time in the region? Discover the recently refurbished Norwegian Spirit as you witness the South Pacific’s untouched islands on a Hawaii and French Polynesia cruise. Experience the lush forests, crystal-clear turquoise waters and colourful undersea life that will have you feeling like you are in paradise.                 </p>

                        </div>
                        <div class="col-md-4" data-aos="fade-left" data-aos-duration="2000">
                            <div class="card mb-4 box-design" style="max-width: 100%;">
                                <div class="card-body" >
                                  <small>From</small>
                                  <h3 class="card-title mb-3 price"><%out.println(pr);%><sub class="price-sub">PP/USD</sub></h3><hr>
                                  <p class="card-text">Enjoy fun filled vacation in tourist paradise of U.A.E. for 03 nights in Dubai and 01  holiday await you on board.</p>
                                  
                                  <input type="submit" class="btn btn-warning" id="myBtn" value="START PLANNING">
                                  
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    <!--TAGLINE-->
    <div style="float:left; width: 35%;"><hr/></div>
<div style="float:right; width: 35%;"><hr/></div>
    <center><h3 class="pb-3" style="font-family: 'Poppins', sans-serif; font-weight: 700;">
            Breath in the fresh sea air </h3></center>
  <!--TABLE-->
    <table><thead style="background-color: rgb(25,25,124); color: white">
        <tr>
            <%
                for(int i = 2; i<= 7; i ++)
                    {
                        %>        
                        <th><%=orsmd.getColumnName(i)%></th>
                        <%
                            }
                        %>        
        </tr></thead>
                <tbody style="color: black">
                     <%
                            while(ors.next())
                            {
                            %>
                    <tr>
                        <%
                            for(int i=2; i <= 7; i++)
                            {
                        %>
                            <td><%=ors.getString(i)%></td>
                         <%
                              }
                            %>
                    </tr>
                     <%
                           }
                            %>
                
                </tbody>
            </table>
  
    <!--NEED TO KNOW-->
            <div class="container-fluid pt-3" data-aos="flip-left" data-aos-duration="2000">
                <div class="row pt-3" style="margin: 3px 60px; box-shadow: 20px 20px 50px rgb(184, 179, 179);background-color: rgb(25, 25, 124);color:white;">
                    <div class="col-md-6">
                        <h5 style="padding-left: 19px;"><b>Need to know :</b></h5>
                        <p style="padding-left: 19px;font-size: 15px;">ITINERARY</p>
                        <ol style="list-style-type: disc;font-size: 15px;">
                            <li>Check your specific sailing for exact departure and arrival times. All times are local to the port.</li>
                            <li>Itineraries are subject to change at any time without notice.</li>
                            <li>View a list of tender ports.</li>
                        </ol>
                        
                    </div>
                    <div class="col-md-6" style="padding-top: 36px;">
                        <p style="padding-left: 19px;font-size: 15px;">EMBARKATION + DISEMBARKATION</p>
                        <ol style="list-style-type: disc;font-size: 15px;">
                            <li>Due to security reasons, all guests must be on board 2 hours before sailing on Day 1 of cruise.</li>
                            <li>Disembarkation usually begins 2 hours after docking on final day of cruise.</li>                     
                        </ol>
                    </div>
                </div>
            </div>
            
            <!--ROOMS-->
            <div class="container-fluid">
                <div class="row pt-5" style="margin: 3px 50px;">
                    <div class="col-md-4 img" data-aos="zoom-in-down" data-aos-duration="2000">
                        <img src="../images/south_room(1).jpg" class="img-fluid">
                        
                    </div>
                    <div class="col-md-8" data-aos="zoom-in-down" data-aos-duration="2000">
                            <div class="card mb-4" style="max-width: 100%;">
                                <div class="card-body" >
                                    <h3>Staterooms & Accommodation</h3>
                                    <small>Revel in spacious serenity at sea with our amazing, imaginative and luxurious 
                                        Suites that offer only the finest appointments throughout. The floor-to-ceiling 
                                        windows in our private balcony accommodation are perfect for sun seekers and 
                                        stargazers. Our Oceanview and Inside Staterooms are comfortable and well-decorated 
                                        where you can peacefully recline at the end of the day or linger in the mornings.
                                    </small><hr>
                                    <center><small>CHECK ALL STATEROOMS </small></center>
                                </div>
                            </div>
                    </div>
                    
                </div>
                <!--2room-->
                <div class="row pt-1" style="margin: 2px 50px;" data-aos="zoom-in-down" data-aos-duration="2000">
                    <div class="col-md-8">
                        <img src="../images/r6.jpg" class="img-fluid" width="100%" height="50%">
<!--                        <div class="bottom-left">SUIT</div>-->
                    </div>
                    <div class="col-md-4">
                        <img src="../images/r2.jpg" class="img-fluid">
<!--                        <div class="bottom-left">OCEANVIEW</div>-->
                    </div>
                </div>
                
                <!--3room-->
                <div class="row pt-4" style="margin: 3px 50px;">
                    <div class="col-md-4" data-aos="zoom-in-down" data-aos-duration="2000">
                        <img src="../images/room1.jpg" class="img-fluid">
<!--                        <div class="bottom-left">SUIT</div>-->
                    </div>
                    <div class="col-md-8" data-aos="zoom-in-down" data-aos-duration="2000">
                        <img src="../images/r5.jpg" class="img-fluid">
<!--                        <div class="bottom-left">OCEANVIEW</div>-->
                    </div>
                </div>
            </div>
            
            <hr>
            
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
  <!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
      <form action="pay.jsp" method="POST">
    <div class="modal-header" style="padding-top: 12px;padding-bottom:5px;">
        <h2>YOUR BOOKING DETAILS</h2>
      <span class="close">&times;</span>
      
    </div>
    <div class="modal-body" style="padding: 30px 50px;">
      <div class="row">
                <div class="col-md-8">
                    <label class="">YOUR NAME</label>
                    <input type="text" value="<%out.println(sess.getAttribute("name"));%>" readonly class="form-control">
                    <label class="pt-4">YOUR EMAIL ADDRESS</label>
                    <input type="text" value="<%out.println(sess.getAttribute("mail"));%>" readonly class="form-control">
                    <label class="pt-4">YOUR PHONE NUMBER</label>
                    <input type="text" class="form-control" placeholder="Enter your phone number" name="phone_no">
                    <label class="pt-4">SELECT THE NO OF PERSONS</label>
                    <input type="number" class="form-control" id="person" name="person">
                    <label class="pt-4">SELECT ROOM TYPE</label>
                    <select class="form-control" name="room" required>
                        <option value="">-----CHOOSE FROM HERE-----</option>
                        <option value="INSIDE">INSISDE</option>
                        <option value="OCEANVIEW">OCEANVIEW</option>
                        <option value="SUIT">SUIT</option>
                    </select>
                    
               </div>
<div class="col-md-4 design">
     <%!
            OraclePreparedStatement opst2;
            OracleResultSet ors2; 
            OracleResultSetMetaData orsmd2;
            String n,q2;
            %>
     <%
                 q2 = "select * from CRUISE_DETAILS where PACKAGE=?";
                opst2=(OraclePreparedStatement)oconn.prepareStatement(q2);
                opst2.setString(1,p);              
                ors2 = (OracleResultSet)opst2.executeQuery();
                orsmd2 = (OracleResultSetMetaData)ors2.getMetaData();
                
             %>  
            <table>
                    <tbody>
                    <%
                        
                        while(ors2.next())
                        { 
                            for(int i = 1; i <= 7; i ++)
                            {
                        %>
                        <tr>
                        <th><%=orsmd2.getColumnName(i)%></th>
                        <td><%=ors2.getString(i)%></td></tr>
                        <%
                            }
                            %>
                
                <%
                    }
                %>
            </tbody>
        </table>
         </div>
       </div>
        
    </div>
    <div class="modal-footer">
      <input value="<%out.println(p);%>" name="final" type="text" hidden>
      <input type="submit" value="PROCEED" class="btn btn-secondary">
    </div>
      </form>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
  integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="../js/aos.js"></script>

                
           
    </body>
</html>