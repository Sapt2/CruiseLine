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
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="home.jsp" style="color: whitesmoke;">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cruise_deals.jsp" style="color: whitesmoke;">Cruise Deals</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="why_cruising.jsp" style="color: whitesmoke;">Why Pearl?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="blogs.jsp" style="color: whitesmoke;">Cruise Blogs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp" style="color: whitesmoke;">Contact Us</a>
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
    <a href="" style="padding: 20px;color: black;"><small>Enquire Now</small></a>
    <span style="padding: 20px;"><i class="fas fa-phone"></i><small> +23-4587-5269</small></span>
    <span style="padding: 20px;"><i class="fas fa-envelope"></i><small> pearlcruise@gmail.com</small></span>
  </span>
  </div> 


    <!--body-->
    <%@include file="scroll.jsp"%>
    <div class="container-fluid">
        <div class="row mt-3 mb-3">
            <div class="col-md-3">
                <h5><i class="fas fa-ship"></i> Find Your Cruise</h5>
                <div class="accordion" id="accordionPanelsStayOpenExample"
                     data-aos="fade-down" data-aos-duration="2000">

                    <div class="accordion-item">
                      <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="false" aria-controls="panelsStayOpen-collapseOne">
                          By Destination
                        </button>
                      </h2>
                      <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingOne">
                        <div class="accordion-body">
                        <a href="india.jsp" style="color:blue;">> India</a><br>
                        <a href="...">> Africa</a><br>
                        <a href="...">> Alaska</a><br>
                        <a href="...">> South America</a><br>
                        <a href="...">> Hawaii</a><br>
                        <a href="...">> North America</a><br>
                        <a href="...">> Antarctica</a><br>
                        <a href="...">> Europe</a><br>
                        <a href="...">> Australia</a><br>
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
                          <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
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
                          <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-md-9">
                <strong>Going on your first cruise can be awe-inspiring while you experience the magic of cruising for the first time.</strong>
                  <p  class="mt-3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Watch now !</p>
                  <div class="row" >

                    <div class="col-md-4">
                      <div class="" >
                       <iframe  src="https://www.youtube.com/embed/s6f2hpu-D5s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                       <p class="blog">Tour at the BIGGEST Cruise Ship in Asia</p>
                      </div>
                    </div>

                    <div class="col-md-4">
                      <div class="">
                      <iframe src="https://www.youtube.com/embed/EadzsR4rnD4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                      <p class="blog">Wonder of the Seas Cruise Ship Tour 4K</p>  
                      </div>
                    </div>

                    <div class="col-md-4">
                      <div class="">
                        <iframe src="https://www.youtube.com/embed/Upt7MQLzWJ8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        <p class="blog">Witness the majestic Empress through us</p>
                      </div>
                    </div>

            </div>

            <div class="row mt-3" style="padding-right: 10px;">

              <div class="col-md-4">
                <div class="" style="width: 17rem;">
                 <iframe src="https://www.youtube.com/embed/gIvoNoiyo1k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                  <p class="blog">Inside The Biggest Cruise Ship In The World</p>
                </div>
              </div>

              <div class="col-md-4">
                <div class="" style="width: 17rem;">
                <iframe src="https://www.youtube.com/embed/IgZi_XFQFsc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                <p class="blog">Top 5 Best New CRUISE SHIPS in 2023!</p> 
                </div>
              </div>

              <div class="col-md-4">
                <div class="" style="width: 17rem;">
                <iframe src="https://www.youtube.com/embed/GkiW5GsFVbs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                <p class="blog">Cinematic Timelapse of LNG Powered AIDAnova Cruise Ship</p>   
                </div>
              </div>

      </div>

      <div class="row mt-3" style="padding-right: 10px;">

        <div class="col-md-4">
          <div class="" style="width: 17rem;">
           <iframe  src="https://www.youtube.com/embed/zGYvcV3rKI4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
           <p class="blog">MSC Seaside Cruise Ship Tour 4K</p>
          </div>
        </div>

        <div class="col-md-4">
          <div class="" style="width: 17rem;">
            <iframe src="https://www.youtube.com/embed/X4TChtYa4sM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            <p class="blog">Symphony of the Seas 90 Minutes Full Walking Tour</p>
          </div>
        </div>

        <div class="col-md-4">
          <div class="" style="width: 17rem;">
            <iframe src="https://www.youtube.com/embed/GJPlAtisr4o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            <p class="blog">6 Cruise Ships from Above - CARIBBEAN 2020</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  

<!--FOOTER-->
<div class="row" style="background-color: rgb(25, 25, 124); padding-left: 20px;">
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