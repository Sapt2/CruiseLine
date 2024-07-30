<%-- 
    Document   : a
    Created on : 16 May, 2023, 6:24:22 PM
    Author     : Koyel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/modal.css">
        <link rel="stylesheet" href="../css/home.css">
        <!--FONT AWSOME-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
        <!-- Google Font -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Bad+Script&family=Poppins:ital,wght@1,200&display=swap" rel="stylesheet">

        <title>JSP Page</title>
        <style>

table,tr,td 
        {
            border-collapse: collapse;
            font-size: 20px;
        }
        th
                {
                    padding:10px;
                    border-collapse: collapse;
                    
                }
</style>
    </head>
    
        <%!
            OracleConnection oconn2,oconn3; 
               OraclePreparedStatement opst2,opst3;
               OracleStatement ost2,ost3;
               OracleResultSet ors2,ors3; 
               OracleResultSetMetaData orsmd2,orsmd3;
               String q2,ab,new_ab;
               String r,f,n;
       %>
        <%
            ab=request.getParameter("plan");
            new_ab=ab;
            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                oconn2 = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                q2 = "select * from CRUISE_DETAILS where PACKAGE=?";
                opst2=(OraclePreparedStatement)oconn2.prepareStatement(q2);
                opst2.setString(1,ab);              
                ors2 = (OracleResultSet)opst2.executeQuery();
                orsmd2 = (OracleResultSetMetaData)ors2.getMetaData();
            %>
            
            <%
                HttpSession sess=request.getSession(false);
                
                %>
                  
<body>
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
              <a class="nav-link" href="#" style="color: whitesmoke;">Why Pearl?</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" style="color: whitesmoke;">Cruise Blogs</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" style="color: whitesmoke;">Contact Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#" style="color: rgb(173, 165, 165);">Log out</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  
  <!--MINI-NAV-->    
  <div class="p-3"style="background-color:rgb(248, 246, 244);" data-aos="fade-left">
    <span>
    <a href="" style="padding: 20px;color: black;"><small>Cuise Reviews</small></a>
    <a href="" style="padding: 20px;color: black;"><small>Enquire Now</small></a>
    <span style="padding: 20px;"><i class="fas fa-phone"></i><small> +23-4587-5269</small></span>
    <span style="padding: 20px;"><i class="fas fa-envelope"></i><small> pearlcruise@gmail.com</small></span>
    
  </span>
  </div> 

<!-- The Modal -->
<div id="myModal">
    <div class="modal-content">
      <form action="pay.jsp" method="POST" name="form1">
          <div class="modal-header" style="padding-top: 12px;padding-bottom:5px;">
          <h4 style="padding-left:30px;">YOUR BOOKING DETAILS</h4>
<!--          <a href="india_"><i class="fas fa-arrow-left"></i></span>-->
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
                        <option value="BALCONY">BALCONY</option>
                        <option value="CLUB BALCONY SUIT">CLUB BALCONY SUIT</option>
                        <option value="SUIT">SUIT</option>
                    </select>
                    
               </div>
                

  
                
                <div class="col-md-4 design">
            <table>
                    <tbody>
                    <%
                        
                        while(ors2.next())
                        {
                            n=ors2.getString(1);
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
      <input value="<%out.println(new_ab);%>" name="final" type="text" hidden>
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

</body>
</html>
