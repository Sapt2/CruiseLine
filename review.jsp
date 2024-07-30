<%-- 
    Document   : review
    Created on : 21 May, 2023, 1:06:32 PM
    Author     : Saptashwak Karmakar
--%>

<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--BOOTSTRAP CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/home.css">
    <!--FONT AWSOME-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Bad+Script&family=Poppins:ital,wght@1,200&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
        *{
box-sizing: border-box;
/*font-family: 'Poppins',sans-serif;*/
}
body{
    
}

.container1{
    padding: 10px 20px;
    place-items: center;
    text-align: center;    
    width: 400px;
    height: 400px;
    border-radius: 5%;
/*    box-shadow: 0 0 5px rgba(0, 0, 0, 0.8);*/

}
.star{
border: none;
background-color: unset;
font-size: 3rem;
color: #ff9800;
padding-left: 20px;
}
.star:hover{
cursor: pointer;
}
textarea{
width: 360px;
padding: 12px;
border: 1px solid #191717;
border-radius: 4px;
resize: vertical;
}

#submit_button{
    width: 250px;
    background-color: #ff9800;
    margin-top: 20px;
    padding: 10px;
    font-size: 20px;
    color:#fff;
    border-radius: 10px;
    cursor: pointer;
    border:none;

}
    </style>
    <script>
        function funalert()
        {
        alert("THANK YOU FOR YOUR REVIEW!!")
    }
    </script>
</head>

<body>
    <%@include file="scroll.jsp"%>
    <%HttpSession sess=request.getSession(false);%>
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


    <div class="container-fluid" style="padding-left:300px;padding-top:100px;">
    <div class="row">
    <div class="container1 col-md-6">
        <button class="star">&#9734;</button>
        <button class="star">&#9734;</button>
        <button class="star">&#9734;</button>
        <button class="star">&#9734;</button>
        <button class="star">&#9734;</button>
        <form action="http://localhost:8080/MAJOR_PROJECT/review" method="POST"
              onsubmit="funalert()"> 
    <p class="current_rating" name="current_rating">

</p>
    <textarea id="comment" name="comment" placeholder="Write something ....." style="height:300px"></textarea> <br>   
    <input type="text" name="email" value="<%out.println(sess.getAttribute("mail"));%>" hidden>
    <button type="sumbit" value="submit" id="submit_button">submit</button>
        </form>
        
    </div>
        <div class="col-md-6">
            
            <img src="../images/reviewww.webp" width="100%">
        </div>
    
    </div></div>
    
        
    <script>
        const allStars = document.querySelectorAll('.star');
        let current_rating=document.querySelector('.current_rating');
        allStars.forEach((star,i) => {
            star.onclick = function (){
                let current_star_level = i+1;
//                current_rating.innerText=`${current_star_level} of 5`;
                allStars.forEach((star,j) =>{
                    if(current_star_level >= j+1){
                        star.innerHTML='&#9733';
                    }
                    else{
                        star.innerHTML='&#9734';
                    }
                })
            }
        })
    </script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
