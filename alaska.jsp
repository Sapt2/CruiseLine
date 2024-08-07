<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
  <link rel="stylesheet" href="../css/country_package.css">
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
    <%
      HttpSession sess=request.getSession(false);                
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
<!--main-body-->
<div class="container-fluid" style="padding-left: 40px;padding-right: 40px;">
  <div class="row mt-3 mb-3">
      <div class="col-md-3">
          <h5><i class="fas fa-ship"></i> Find Your Cruise</h5>
          <div class="accordion" id="accordionPanelsStayOpenExample">

              <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false" aria-controls="panelsStayOpen-collapseOne">
                    By Destination
                  </button>
                </h2>
                <div id="panelsStayOpen-collapseOne" class="accordion-collapse" aria-labelledby="panelsStayOpen-headingOne">
                  <div class="accordion-body">
                        <a href="india.jsp" >> India</a><br>
                        <a href="africa.jsp">> Africa</a><br>
                        <a href="alaska.jsp" style="color:black;">> Alaska</a><br>
                        <a href="south_america.jsp">> South America</a><br>
                        <a href="hawaii.jsp">> Hawaii</a><br>
                        <a href="north_america.jsp">> North America</a><br>
                        <a href="australia.jsp">> Australia</a><br>
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                    By Cruiseliner
                  </button>
                </h2>
                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                  <div class="accordion-body">
                     <a href="CRUISELINER_OBEROI.JSP">> OBEROI</a><br>
                        <a href="cruiseliner_ponant.jsp" >> PONANT</a><br>
                        <a href="cruiseliner_ncl.jsp" >> NCL</a><br>
                        <a href="cruiseliner_silversea.jsp">> SILVERSEA</a><br>
                        <a href="cruiseliner_msc_cruises.jsp">> MSC CRUISES</a><br>
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                    By Cruisetype
                  </button>
                </h2>
                <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                  <div class="accordion-body">
                    <a href="luxury.jsp">> Luxury</a><br>
                        <a href="deluxe.jsp">> Deluxe</a><br>
                        <a href="premium.jsp">> Premium<br>
                        <a href="river.jsp">> River</a><br>
                        <a href="family.jsp">> Family</a><br>
                  </div>
                </div>
              </div>
            </div>
      </div>
      
      <!--PACKAGE_1-->
      <div class="col-md-9">
        <div class="card mb-4 box-design" style="max-width: 100%;">
          <form method="POST" action="alaska_package.jsp">
        <div class="row">
          <div class="col-md-8 h" style="padding-right:0px;position:relative;" data-aos="zoom-in" data-aos-duration="2000">
            <img src="../images/alas1.jpg" class="img-fluid" width="100%" height="80%" alt="...">
            <div class="details p-3" id="detail">
              <input type="text" class="package_tag" name="tag" readonly 
            value=" 7 day Voyage Of the Glaciers(Northbound)">
          <input type="text" class="dest" name="dest" readonly 
            value="Destination : Alaska">
          <input type="text" class="from" name="from" readonly 
            value="From Vancouver, BC, Canada">
          <br><br><br>
              <i class="fas fa-calendar-week"></i><small class="detail"> Sailing November, 2023</small><br>
              <i class="fa fa-water"></i><small class="detail"> Ship Name : Grand Princess</small><br>
            <i class="fas fa-ship"></i><small class="detail"> Cruise Type : River Cruise</small><br>
            <i class="fa-solid fa-anchor"></i><small class="detail"> Cruiseliner : MSC Cruises</small><br><br><br>
      
              <p style="color:rgb(82, 72, 72);font-size: 20px;">9 PORTS OF CALL</p><br>
              <small class="detail">Anchorage-Alaska; College Fjord; Glacier Bay(Alaska); Juneau-Alaska; Ketchikan-Alaska; Skagway- Alaska; Vancouver-British Columbia</small>
            </div>
            </div>
          
          <div class="col-md-4" style="padding-left: 0px;">
            <div class="card-body" data-aos="fade-left" data-aos-duration="2000">
              <small>From</small><br>
              <input type="text" class="price" name="price" readonly 
                value="$1,569">
              <sub class="price-sub">PP/USD</sub><hr>
              <p class="card-text">Enjoy fun filled vacation in tourist paradise of U.A.E. for 03 nights in Dubai and 01  holiday await you on board.</p>
              <input type="text" name="val" value="ALASKA_P1" hidden>
              <input type="submit" class="btn btn-warning" name="button1" value="BOOK NOW">
             
            </div>
          </div>
        </div></form></div>
          
          
          <!--PACKAGE_2-->
          <div class="card mb-4 box-design" style="max-width: 100%;">
            <form method="POST" action="alaska_package.jsp">
          <div class="row">
          <div class="col-md-8" style="padding-right:0px;position:relative;" data-aos="zoom-in" data-aos-duration="2000">
            <img src="../images/alas2.jpg" class="img-fluid" width="100%" alt="...">
            <div class="details p-3" id="detail">
              <input type="text" class="package_tag" name="tag" readonly 
              value=" 7 day Voyage Of the Glaciers with Glacier Bay(Southbound)">
            <input type="text" class="dest" name="dest" readonly 
              value="Destination : Alaska">
            <input type="text" class="from" name="from" readonly 
              value="From Anchorage,USA">
            <br><br><br>

              <i class="fas fa-calendar-week"></i><small class="detail"> Sailing September, 2023</small><br>
              <i class="fa fa-water"></i><small class="detail"> Ship Name : Majestic Princess</small><br>
            <i class="fas fa-ship"></i><small class="detail"> Cruise Type : Family Cruise</small><br>
            <i class="fa-solid fa-anchor"></i><small class="detail"> Cruiseliner : NCL</small><br><br><br>
              <p style="color:rgb(82, 72, 72);font-size: 20px;">6 PORTS OF CALL</p><br>
              <small class="detail">Anchorage-Alaska; Icy Strait Point-Alaska; Juneau-Alaska; Ketchikan-Alaska; Skagway- Alaska; Vancouver-British Columbia</small>
            </div>
            </div>
          
          <div class="col-md-4" style="padding-left: 0px;">
            <div class="card-body" data-aos="fade-left" data-aos-duration="2000">
              <small>From</small><br>
              <input type="text" class="price" name="price" readonly 
                value="$1,639">
              <sub class="price-sub">PP/USD</sub><hr>
              <p class="card-text">Enjoy fun filled vacation in tourist paradise of U.A.E. for 03 nights in Dubai and 01  holiday await you on board.</p>
              <input type="text" name="val" value="ALASKA_P2" hidden>
              <input type="submit" class="btn btn-warning" name="button2" value="BOOK NOW">
            
            </div>
          </div>
          </div>  </form>
        </div>
          
          <!--PACKAGE_3-->
          <div class="card mb-4 box-design" style="max-width: 100%;">
            <form method="POST" action="alaska_package.jsp">
          <div class="row">
          <div class="col-md-8" style="padding-right:0px;position:relative;" data-aos="zoom-in" data-aos-duration="2000">
            <img src="../images/alas3.jpg" class="img-fluid" width="100%" alt="...">
            <div class="details p-3" id="detail">
              <input type="text" class="package_tag" name="tag" readonly 
            value=" 7 Nights Alaska: Hubbard Glacier & Skagway Cruise">
          <input type="text" class="dest" name="dest" readonly 
            value="Destination : Alaska">
          <input type="text" class="from" name="from" readonly 
            value="From Seward,Alaska,USA">
              <i class="fas fa-calendar-week"></i><small class="detail"> Sailing December, 2023</small><br>
              <i class="fa fa-water"></i><small class="detail"> Ship Name : Norweign Jewel</small><br>
            <i class="fas fa-ship"></i><small class="detail"> Cruise Type : Premium Cruise</small><br>
            <i class="fa-solid fa-anchor"></i><small class="detail"> Cruiseliner : Ponant</small><br><br><br>

              
              <p style="color:rgb(82, 72, 72);font-size: 20px;">8 PORTS OF CALL</p><br>
              <small class="detail">Endicott Arm & Dawes Glacier; Icy Strait Point-Alaska; JUneau-Alaska; Ketchikan-Alaska; Skagway- Alaska; Vancouver-British Columbia</small>
            </div>
            </div>
          
          <div class="col-md-4" style="padding-left: 0px;">
            <div class="card-body" data-aos="fade-left" data-aos-duration="2000">
              <small>From</small><br>
              <input type="text" class="price" name="price" readonly 
              value="$2,309">
            <sub class="price-sub">PP/USD</sub><hr>
              <p class="card-text">Enjoy fun filled vacation in tourist paradise of U.A.E. for 03 nights in Dubai and 01  holiday await you on board.</p>
              <input type="text" name="val" value="ALASKA_P3" hidden>
              <input type="submit" class="btn btn-warning" name="button3" value="BOOK NOW">
              
            </div>
          </div>
          </div> </form>
        </div>
          
          <!--PACKAGE_4-->
          <div class="card mb-4 box-design" style="max-width: 100%;">
            <form method="POST" action="alaska_package.jsp">
          <div class="row">
          <div class="col-md-8" style="padding-right:0px;position:relative;" data-aos="zoom-in" data-aos-duration="2000">
            <img src="../images/alas4.jpg" class="img-fluid" width="100%" alt="...">
            <div class="details p-3" id="detail">
              <input type="text" class="package_tag" name="tag" readonly 
            value=" 7 Nights Alaska: Hubbard Glacier & Skagway to Seward Cruise">
          <input type="text" class="dest" name="dest" readonly 
            value="Destination : Alaska">
          <input type="text" class="from" name="from" readonly 
            value="From Vancouver,BC,Canada">
          <br><br><br>
              <i class="fas fa-calendar-week"></i><small class="detail"> Sailing November, 2023</small><br>
              <i class="fa fa-water"></i><small class="detail"> Ship Name : Norweign Spirit</small><br>
            <i class="fas fa-ship"></i><small class="detail"> Cruise Type : Luxury Cruise</small><br>
            <i class="fa-solid fa-anchor"></i><small class="detail"> Cruiseliner : Silversea</small><br><br><br>
              
              <p style="color:rgb(82, 72, 72);font-size: 20px;">7 PORTS OF CALL</p><br>
              <small class="detail">Icy Strait Point-Alaska; Sewerd-Alaska; JUneau-Alaska; Ketchikan-Alaska; Skagway- Alaska; Vancouver-British Columbia</small>
            </div>
            </div>
          
          <div class="col-md-4" style="padding-left: 0px;">
            <div class="card-body" data-aos="fade-left" data-aos-duration="2000">
              <small>From</small><br>
              <input type="text" class="price" name="price" readonly 
              value="$1,210">
            <sub class="price-sub">PP/USD</sub><hr>
              <p class="card-text">Enjoy fun filled vacation in tourist paradise of U.A.E. for 03 nights in Dubai and 01  holiday await you on board.</p>
              <input type="text" name="val" value="ALASKA_P4" hidden>
              <input type="submit" class="btn btn-warning" name="button4" value="BOOK NOW">
             
            </div>
          </div>
          </div>  </form>
        </div>
          
          <!--PACKAGE_5-->
          <div class="card mb-4 box-design" style="max-width: 100%;">
            <form method="POST" action="alaska_package.jsp">
          <div class="row">
          <div class="col-md-8" style="padding-right:0px;position:relative;" data-aos="zoom-in" data-aos-duration="2000">
            <img src="../images/alas5.jpg" class="img-fluid" width="100%" alt="...">
            <div class="details p-3" id="detail">
              <input type="text" class="package_tag" name="tag" readonly 
              value=" 8 Day Inside Passage(Roundtrip Vancouver)">
            <input type="text" class="dest" name="dest" readonly 
              value="Destination : Alaska">
            <input type="text" class="from" name="from" readonly 
              value="From Vancouver,BC,Canada">
            <br><br><br>
              <i class="fas fa-calendar-week"></i><small class="detail"> Sailing November, 2023</small><br>
              <i class="fa fa-water"></i><small class="detail"> Ship Name : Majestic Princess</small><br>
              <i class="fas fa-ship"></i><small class="detail"> Cruise Type : Deluxe Cruise</small><br>
              <i class="fa-solid fa-anchor"></i><small class="detail"> Cruiseliner : Silversea</small><br><br><br>
              <p style="color:rgb(82, 72, 72);font-size: 20px;">5 PORTS OF CALL</p><br>
              <small class="detail">Juneau-Alaska; Ketchikan-Alaska; Sitka-Alaska; Skagway- Alaska; Vancouver-British Columbia</small>
            </div>
            </div>
          
          <div class="col-md-4" style="padding-left: 0px;">
            <div class="card-body" data-aos="fade-left" data-aos-duration="2000">
              <small>From</small><br>
              <input type="text" class="price" name="price" readonly 
              value="$3,309">
                <sub class="price-sub">PP/USD</sub><hr>
              <p class="card-text">Enjoy fun filled vacation in tourist paradise of U.A.E. for 03 nights in Dubai and 01  holiday await you on board.</p>
              <input type="text" name="val" value="ALASKA_P5" hidden>
              <input type="submit" class="btn btn-warning" name="button5" value="BOOK NOW">
               
            </div>
          </div>
          </div></form>
        </div>
          
      </div></div>
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
<div style="background-color: rgb(247, 182, 4);" class="p-3"><p style="margin-bottom: 0px;">� PearlCruiseLine - A division of Odyssey Vacations Pvt. Ltd. All rights reserved.  |  Sitemap  |  Privacy Policy</p></div>
  

  <!--JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
  integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="../js/aos.js"></script>
</body>
</html>