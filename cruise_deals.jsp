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
<style>
  .flip-card {
            background-color: transparent;
            width: 300px;
            height: 280px;
            border: 1px solid #f1f1f1;
            border-radius: 8px 8px;
            perspective: 1000px; /*Remove this if you don't want the 3D effect */
            } 

/* This container is needed to position the front and back side */
.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 280px;
  -webkit-backface-visibility: hidden; /* Safari */
  backface-visibility: hidden;
  border-radius: 8px 8px;
}

/* Style the front side (fallback if image is missing) */
.flip-card-front {
  background-color: #bbb;
  color: black;
  
}

/* Style the back side */
.flip-card-back {
  background-color: rgb(199, 196, 5);
  color: white;
  transform: rotateY(180deg);
}

</style>
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
                        <a href="india.jsp">> India</a><br>
                        <a href="africa.jsp">> Africa</a><br>
                        <a href="alaska.jsp">> Alaska</a><br>
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
                        <a href="CRUISELINER_OBEROI.jsp">> OBEROI</a><br>
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
                        <a href="luxury.jsp" style="color:blue;">> Luxury</a><br>
                        <a href="deluxe.jsp">> Deluxe</a><br>
                        <a href="premium.jsp">> Premium</a><br>
                        <a href="river.jsp">> River</a><br>
                        <a href="family.jsp">> Family</a><br>
                        </div>
                      </div>
                    </div>
                  </div>
            </div>
            <div class="col-md-9">
                <strong>The dream of a perfect cruise begins at home and comes alive on board the ship.
                  Here are some savings to help you make up your mind!</strong>
                  <p  class="mt-3" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Select Your Destination !</p>
                  <div class="row" style="padding-right: 10px;" 
                       data-aos="zoom-in-up" data-aos-duration="3000">

                    <div class="col-md-4">
                      <div class="flip-card">
                        <div class="flip-card-inner">
                          <div class="flip-card-front">
                            <img src="../images/india.jpg" style="height:223px;border-radius: 8px 8px 0px 0px;" class="card-img-top" alt="...">
                            <div class="card-body place">
                              <p class="card-text" style="text-align: center;color: white;">INDIA</p>
                            </div>
                          </div>
                          <div class="flip-card-back">
                            <p>Country of Cultures</p>
                            <p>It has high- energy celebrations, incredible landmark, and rich history.India is the cradle of the human race, the birthplace of human speech, the mother of history, the grandmother of legend and the great-grandmother of tradition.</p>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-md-4">
                        <div class="flip-card">
                            <div class="flip-card-inner">
                              <div class="flip-card-front">
                        <img src="../images/afc.jpg" style="height: 223px;" class="card-img-top" alt="...">
                        <div class="card-body place">
                          <p class="card-text" style="text-align: center;color: white;">AFRICA</p>
                        </div>
                      </div>
                      <div class="flip-card-back">
                        <p>Country of Forest and Rivers</p>
                        <p>Africa is sometimes nicknamed the "Mother Continent" due to its being the oldest inhabited continent on Earth. Humans and human ancestors have lived in Africa for more than 5 million years.It has dense forests, big lakes, perennial rivers and large tracts of deserts.</p>
                      </div>
                    </div>
                  </div>
                </div>

                    <div class="col-md-4">
                        <div class="flip-card">
                            <div class="flip-card-inner">
                              <div class="flip-card-front">
                        <img src="../images/alaska.jpg" style="height: 223px;" class="card-img-top" alt="...">
                        <div class="card-body place">
                          <p class="card-text" style="text-align: center;color: white;">ALASKA</p>
                        </div>
                      </div>
                      <div class="flip-card-back">
                        <p>Country of Northern Lights</p>
                        <p>It is known for its wide-open spaces, abundant outdoor experiences, and Alaskan Native culture. Alaska is also one of the best places in the world in which to view the Northern Lights. From the mountains to the sea fjords, and Alaska's vast interior terrain, the 49th state is a photographer's dream.</p>
                      </div>
                    </div>
                    </div>
                    </div>

            </div>

            <div class="row mt-3" style="padding-right: 10px;"
                  data-aos="zoom-in-up" data-aos-duration="3000">

              <div class="col-md-4">
                <div class="flip-card">
                    <div class="flip-card-inner">
                      <div class="flip-card-front">
                  <img src="../images/s_america.jpg" style="height: 223px;" class="card-img-top" alt="...">
                  <div class="card-body place">
                    <p class="card-text" style="text-align: center;color: white;">SOUTH AMERICA</p>
                  </div>
                </div>
                <div class="flip-card-back">
                    <p>Country of Nature</p>
                    <p>One of the World's wonders, Machu Picchu located here, also It is home to the world's largest river (the Amazon) as well as the world's driest place (the Atacama Desert). South America, the fourth-largest continent, extends from the Gulf of Darién in the northwest to the archipelago of Tierra del Fuego in the south.  </p>
                  </div>
                </div>
                </div>
              </div>

              <div class="col-md-4">
                <div class="flip-card">
                    <div class="flip-card-inner">
                      <div class="flip-card-front">
                  <img src="../images/hawaii.jpg" style="height: 223px;" class="card-img-top" alt="...">
                  <div class="card-body place">
                    <p class="card-text" style="text-align: center;color: white;">HAWAII</p>
                  </div>
                </div>
                <div class="flip-card-back">
                    <p>Country of Beaches</p>
                        <p>Hawaii is known for its beautiful beaches?some of them with unusual colors. Many beaches are filled with white sand, but other Hawaiian shores are covered with green, red, pink, and even black sand. Whether you like hiking, biking, kayaking, sailing, swimming, or just sitting on the beach, Hawaii is the state for you.  </p>
                  </div>
                </div>
                </div>
              </div>

              <div class="col-md-4">
                <div class="flip-card">
                    <div class="flip-card-inner">
                      <div class="flip-card-front">
                  <img src="../images/n_america.jpg" style="height: 223px;" class="card-img-top" alt="...">
                  <div class="card-body place">
                    <p class="card-text" style="text-align: center;color: white;">NORTH AMERICA</p>
                  </div>
                </div>
                <div class="flip-card-back">
                    <p>Country of Island</p>
                        <p>North America is a large continent in the Northern and Western Hemispheres of Earth. It is to the east of the Pacific Ocean, the west of the Atlantic Ocean, the south of the Arctic Ocean, and it is the northern part of the Americas. The southernmost part is Central America.  </p>
                  </div>
                </div>
              </div>
              </div>
            </div>

    

      <div class="row mt-3" style="padding-right: 10px;"
            data-aos="zoom-in-up" data-aos-duration="3000">


        <div class="col-md-4">
            <div class="flip-card">
                <div class="flip-card-inner">
                  <div class="flip-card-front">
            <img src="../images/australia.jpg" style="height: 223px;" class="card-img-top" alt="...">
            <div class="card-body place">
              <p class="card-text" style="text-align: center;color: white;">AUSTRALIA</p>
            </div>
          </div>
          <div class="flip-card-back">
            <p>Country of Plenty Things</p>
                <p>Australia is known for many things, including swathes of tropical beaches, marine reserves, Aboriginal culture, cute koalas, and lush rainforests.
                    From Queensland?s sultry north, the location of the magnificent Great Barrier Reef, to Sydney?s iconic architecture , Australia is one of the most diverse and fascinating countries on the planet.  </p>
          </div>
        </div>
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