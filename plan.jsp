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
  <script>
        function funalert()
        {
        alert("Your record has been saved!\n WE will get back to you soon!")
    }
    </script>
    <style>
      .button
      {
        border-radius: 20px 20px;
        padding: 5px 30px;
      }
    </style>

</head>
<body> 
                <%
                 HttpSession sess=request.getSession(false);                
                 %>
                 <%@include file="scroll.jsp"%>
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
  
    <div style="padding: 20px;background-color:rgb(248, 246, 244);">
        <span>
        <a href="review.jsp" style="padding: 20px;color: black;"><small>Cuise Reviews</small></a>
        <a href="" style="padding: 20px;color: black;"><small>Enquire Now</small></a>
        <span style="padding: 20px;"><i class="fas fa-phone"><small></i>+23-4587-5269</small></span>
        <span style="padding: 20px;"><i class="fas fa-envelope"><small></i> pearlcruise@gmail.com</small></span>
        <span>
          
        </span>
          
      </span>
      </div> 


    <!--tags-->  
            <div class="container mt-3">
                <h4 style="font-family:'Courier New', Courier, monospace; font-weight:bold; color: rgb(25, 25, 124); ">ENQUIRE NOW</h4>

                <h6 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif">Please fill in the details in the form below so that we have a better understanding of your cruise holiday plans and can make recommendations accordingly</h6>
                <small>(Fields marked <span style="color: red;">*</span> are mandatory)</small>
            </div>

    <!-- form -->
    <div class="container mt-3 mb-3" style="background-image: linear-gradient(130deg,rgb(226, 219, 219),rgb(52, 52, 197));
    border-radius: 10px 10px;">
    <form action ="http://localhost:8080/MAJOR_PROJECT/vacation_idea" method="POST"
          onsubmit="funalert()">
        <div class="row pt-3">
          <div class="col-md-5">
            <label>Your Name:</label>
            <input type="text" class="form-control mt-1" name="name" readonly
                   placeholder="Enter Your Name" value="<%out.println(sess.getAttribute("name"));%>">
          </div>
          <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px;">*</div>
          <div class="col-md-5">
            <label>Your Email:</label>
            <input type="email" class="form-control mt-1" name="email" readonly
                   placeholder="Enter Your Email" value="<%out.println(sess.getAttribute("mail"));%>">
          </div>
          <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px">*</div>
        </div>

        <div class="row mt-3">
          <div class="col-md-5">
            <label>City:</label>
            <input type="text" class="form-control mt-1" name="city" placeholder="Enter Your City">
          </div>
          <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px;">*</div>
          <div class="col-md-5">
            <label>Your Address:</label>
            <input type="text" class="form-control mt-1" name="address" placeholder="Enter Your Address">
          </div>
        </div>

        <div class="row mt-3">
          <div class="col-md-5">
            <label>Country:</label>
            <input type="text" class="form-control mt-1" name="country" placeholder="Enter Your Country">
          </div>
        </div>

        <div class="row mt-3">
          <div class="col-md-5">
            <label>Phone No:</label>
            <input type="number" class="form-control mt-1" name="ph_no" placeholder="Enter Your Phone no.">
          </div>
          <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px">*</div>
        </div>

   
    <hr>

    <h5 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"> Share information about your holiday plans: </h5>
    <div class="row mt-3">

      <div class="col-md-5">
        <label for="no_of_adults">No of Adults Travelling </label>
        <select name="no_of_adults" class="form-control mt-1">
          <option value="select">Please select</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6 or more">6 or more</option></select>
      </div>

      <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px;">*</div>
      <div class="col-md-5">
        <label for="no_of_children">No of children below 12 years (if applicable)</label>
        <select name="no_of_children" class="form-control mt-1" id="child">
          <option value="select">Please select</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6 or more">6 or more</option>
        </select>
      </div>
      <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px">*</div>

    </div>
    <div class="row mt-3">
    <div class="col-md-5">
      <div class="row">
      <div class="col-sm-6">
      <label value="travel_month" id="month">Preferred month of travel</label>
      
        <select name="travel_month" class="form-control" id="month"><option value="select">Select month</option>
          <option value="January">January</option>
          <option value="February">February</option>
          <option value="March">March</option>
          <option value="April">April</option>
          <option value="May">May</option>
          <option value="June">June</option>
          <option value="July">July</option>
          <option value="August">August</option>
          <option value="September">September</option>
          <option value="October">October</option>
          <option value="November">November</option>
          <option value="December">December</option>
        </select>
      </div>
      <div class="col-sm-1 mt-4 pt-2" style="color: red;padding-left: 0px">*</div>
      <div class="col-sm-5">
      <select name="travel_year" class="form-control mt-4" id="year"><option value="select">Select year</option>
        <option value="2023">2023</option>
        <option value="2024">2024</option>
      </select>
      </div>
    </div></div>
    <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px">*</div>

<div class="col-md-5">
  <label >Preferred dates of travel (if any)</label>
  <input type="text" class="form-control mt-1" placeholder="Eg: 25th 31st Dec of 2021" name="pref_dates">
</div>
</div>

<div class="row mt-3">
  <div class="col-md-5">
    <label >Preferred cruise destination</label>
    <select name="pref_destination" class="form-control mt-1" id="des"><option value="select">Select cruise destination</option>
      <option value="India">India</option>
      <option value="Africa">Africa</option>
      <option value="Alaska">Alaska</option>
      <option value="Soth America">South America</option>
      <option value="Hawaii">Hawaii</option>
      <option value="North America">North America</option>
      <option value="Antractica">Antractica</option>
      <option value="Europe">Europe</option>
      <option value="Australia">Australia</option>
    </select>
  </div>
  <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px">*</div>
  <div class="col-md-5">
    <label >Preferred departure port(if any)</label>
    <select name="pref_departure_port" class="form-control mt-1" id="des"><option value="select">Any departure port</option>
      <option value="India">India</option>
      <option value="Africa">Africa</option>
    </select>
  </div>
</div>

<div class="row mt-3">
  <div class="col-md-5">
    <label >Preferred duration of cruise</label>
    <select name="pref_duration" class="form-control mt-1" id="time"><option value="select">Select cruise duration</option>
      <option value="1-5 days">1-5 days</option>
      <option value="6-9 days">6-9 days</option>
      <option value="10-15 days">10-15 days</option>
      <option value="15+ days">15+ days</option>
    </select>
  </div>
  <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px">*</div>
  <div class="col-md-5">
    <label >Preferred cruise liner (if any)</label>
    <select name="pref_cruiseliner" class="form-control mt-1" id="des"><option value="select">Any departure port</option>
      <option value="India">India</option>
      <option value="Africa">Africa</option>
    </select>
  </div>
</div>

<div class="row mt-3">
  <div class="col-md-5">
    <label>No. of cabins</label>
    <select name="no_of_cabins" class="form-control mt-1" id="cabin"><option value="select">Select no. of cabins</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6 or more">6 or more</option>
    </select>
  </div>
  <div class="col-md-1 mt-4 pt-2" style="color: red;padding-left: 0px">*</div>
  <div class="col-md-5">
    <label >Preferred cabin type (if any)</label>
    <select name="pref_cabin" class="form-control mt-1" id="cab"><option value="select">Any cabin type</option>
      <option value="Inside cabin">Inside cabin</option>
      <option value="Out side cabin(with window)">Out side cabin(with window)</option>
      <option value="Balcony Cabin">Balcony Cabin</option>
      <option value="Suite">Suite</option>
      </select>
  </div>
</div>

<div class="row mt-3 mb-3">
  <div class="col-md-5">
    <label>Comments</label>
    <input type="text" class="form-control mt-1 pt-5 pb-5" name="comment" 
    placeholder="(Please share any further information that would help us)">
  </div>
</div>

<input type="submit" class="btn btn-danger mb-3 button" value="Submit">
<input type="reset" class="btn btn-danger mb-3 button" value="Reset">


  </form></div>
        




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
<div class="container-fluid p-3" style="background-color: rgb(247, 182, 4);"><p style="margin-bottom: 0px;">© PearlCruiseLine - A division of Odyssey Vacations Pvt. Ltd. All rights reserved.  |  Sitemap  |  Privacy Policy</p></div>
<!--JS-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>