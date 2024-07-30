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
  
    <div style="padding: 20px;background-color:rgb(248, 246, 244) ;"
         data-aos="fade-left"
    data-aos-duration="2000">
      <span>
      <a href="review.jsp" style="padding: 20px;color: black;"><small>Cuise Reviews</small></a>
      <a href="" style="padding: 20px;color: black;"><small>Enquire Now</small></a>
      <span style="padding: 20px;"><i class="fas fa-phone"><small></i> +23-4587-5269</small></span>
      <span style="padding: 20px;"><i class="fas fa-envelope"><small></i> pearlcruise@gmail.com</small></span>
     
      </span>
    </div>
    
    <!-- div -->
    <div class="container mb-3 mt-3" style="border: 2px solid rgb(184, 179, 179);border-radius: 15px 15px 15px 15px;">
        <div class="row" >
            <div class="col mt-2" >
                <p style="font-family:Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;font-size: 25px;"> CONTACT US</p>
            </div>
        </div>
        <!-- main -->
        <div class="container mb-3" style="border: 2px solid rgb(211, 206, 206);border-radius: 10px 10px 10px 10px;">
        <div class="row">
            <div class="col-md-7 pt-2">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15131.25683319718!2d73.88429428342505!3d18.537296165496198!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c04e382a1275%3A0x1ec8ee3be12dcff2!2sKoregaon%20Park%2C%20Pune%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1682760506593!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="col-md-5"
                 data-aos="zoom-in-up" data-aos-duration="2000">
                <h5 style="padding-left: 0px; color: rgb(25, 25, 124);" class="mt-3">PEARLCRUISELINE - A DIVISION OF ODYSSEY VACATIONS PVT. LTD.</h5>
                <p class="mt-3" style="padding-left: 0px;">201 - 202, 2nd Floor, Jewel Tower<br> Lane No. 5,
                Koregaon Park<br> Pune 411001</p>
                <p class="contact" style="padding-left: 0px;"><i class="fas fa-phone"></i> +23-4587-5269</p>
                <p class="contact" style="padding-left: 0px;"><i class="fas fa-envelope"></i> pearlcruise@gmail.com</p>
            </div>
        </div>
    </div>
    <!-- partner -->
    <div class="container mb-3 mt-3" data-aos="zoom-in-up" data-aos-duration="2000">
        <div class="row">
            <div class="col-md-6">
                <h5 style="color: rgb(25, 25, 124);">Bangalore</h5>
                <p style="margin-bottom: 0px;" class="contact">BIT Air Travels Pvt. Ltd.</p>
                <p style="margin-bottom: 0px;" class="contact"><i class="fas fa-phone"></i> +91 96064 52955 / +91 99000 96898 / +91 98452 27249</p>
                <p class="contact"><i class="fas fa-envelope"></i> bangalore@cruisebay.in</p>
            </div>
            <div class="col-md-6">
                <h5 style="color: rgb(25, 25, 124);">Chennai</h5>
                <p style="margin-bottom: 0px;" class="contact">Adyar Travel Bureau</p>
                <p style="margin-bottom: 0px;" class="contact"><i class="fas fa-phone"></i> +91-98410 02681 / 044-4907 9100 / +91-98844 92684</p>
                <p class="contact"><i class="fas fa-envelope"></i> chennai@cruisebay.in</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h5 style="color: rgb(25, 25, 124);">Chandigarh</h5>
                <p style="margin-bottom: 0px;" class="contact">STPL Vacations - a Div. of Shergill Travels Pvt. Ltd.</p>
                <p style="margin-bottom: 0px;" class="contact"><i class="fas fa-phone"></i> +91-8427672550 / +91-8283954399 / +91-172-5000600</p>
                <p class="contact"><i class="fas fa-envelope"></i> chd@cruisebay.in</p>
            </div>
            <div class="col-md-6">
                <h5 style="color: rgb(25, 25, 124);">Mysore</h5>
                <p style="margin-bottom: 0px;" class="contact">CruiseBay Partner Mysore - Great Expeditions</p>
                <p style="margin-bottom: 0px;" class="contact"><i class="fas fa-phone"></i> +91 96866 66197 / +91 98452 27249</p>
                <p class="contact"><i class="fas fa-envelope"></i> bangalore@cruisebay.in</p>
            </div>
        </div>
    </div>
</div> 

<!-- collapsible button -->
<div class="container mb-3" style="padding-right: 0px;padding-left: 0px;">
<p style="padding-left: 10px; margin-bottom: 8px;"
   data-aos="fade-left"
    data-aos-duration="2000"><b style="font-size: 21px;"> Department for guest relationship</b></p>
<button type="button" class="collapsible">Lost & Found</button>
<div class="content">
  <p class="mt-2">All correspondence should include the guest's name (first and last), name of ship and sailing date, as well as a contact address and telephone number. Standard Response time is 10 business days from receipt.</p>
  <a href="lost_found.jsp" style="color: blue;"><i class="far fa-hand-point-right"></i> Click here</a> to report item lost on your cruise
  <small>[Please note, if your item is located, a shipping cost will apply].</small>
</div></div>

<div class="container mb-3 mt-3" style="padding-right: 0px;padding-left: 0px;">
<button type="button" class="collapsible">Guest Relations - Before cuise</button>
<div class="content">
  <div class="row" style="padding-top: 7px;">
    <div class="col-md-4">
      <p><b><small class="mt-2">Phone </small></b>+91 22-71279333</p>
    </div>
    <div class="col-md-2 mb-2" style="border-left: 1px solid black;">
      
    </div>
    <div class="col-md-6">
      <p><b><small>Hours of operation </small></b><br>[ Monday - Friday: 9:00am ? 7:30pm HKG Time
        Saturday: 9:00am ? 5:00pm HKG Time Sunday: Closed ]</p>
    </div>
  </div>
</div>
</div>

<div class="container mb-3 mt-3" style="padding-right: 0px;padding-left: 0px;">
<button type="button" class="collapsible">Guest Relations - After cuise</button>
<div class="content">
  <p class="mt-2">To share any questions or concerns with our guest relations team after your cruise, please click below. Standard Response time is 28 business days from receipt</p>
  <a href="review.jsp" style="color: blue;"><i class="far fa-hand-point-right"></i> Click here </a>to submit any post-cruise feedback.
  <hr style="margin-bottom: 6px;margin-top: 5px;">
  <div class="row">
    <div class="col-md-4">
      <p><b><small class="mt-2">Phone </small></b>+91 22-71279333</p>
    </div>
    <div class="col-md-2 mb-2" style="border-left: 1px solid black;">
      
    </div>
    <div class="col-md-6">
      <p><b><small>Hours of operation </small></b><br>[ Monday - Friday: 9:00am ? 7:30pm HKG Time
        Saturday: 9:00am ? 5:00pm HKG Time Sunday: Closed ]</p>
    </div>
  </div>
</div>
</div>
  
<!-- Button -->
<center>
<a href="plan.jsp"><button class="btn btn-warning mb-3 b1" data-aos="zoom-in" 
                            data-aos-duration="2000">
  <i class="far fa-paper-plane"></i> Need help to plan your cruise vacation?
  <p style="color: blue; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">Let us know!</p>

</button></a>
</center>

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

      <!-- collapsible button -->
      <script>
        var coll = document.getElementsByClassName("collapsible");
        var i;
        
        for (i = 0; i < coll.length; i++) {
          coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.display === "block") {
              content.style.display = "none";
            } else {
              content.style.display = "block";
            }
          });
        }
        </script>
  </body>
  </html>