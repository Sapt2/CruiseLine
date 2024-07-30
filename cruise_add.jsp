<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="154900033540-tpmbu6i7mupashjhdgl3un47pnjnbi6d.apps.googleusercontent.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Document</title>
    <style>
.form-box{
    width: 100%;
    max-width: 450px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
    position: relative;
    top:50%;
    left: 20%;

    background:rgb(0,0,0,0.3);
    padding: 25px 60px 60px;
    text-align: center;
    border-radius: 30px;
   
}
.form-box h1{
    font-size: 30px;
   font-weight: 1000;
    color: #fff;
    position: relative;
    font-family:Georgia, 'Times New Roman', Times, serif;
        margin-bottom: 30px;

} 
.form-box h1::after{
    content: '';
    width: 30px;
    height: 4px;
    border-radius: 4px;
    background: rgb(247, 182, 4);
    position: absolute;
    bottom: -12px;
    left: 50%;
    transform: translateX(-50%);
}

.input-field{
    background: #eaeaea;
    margin: 7px 0;
    border-radius: 15px;
    display: flex;
    align-items: center;
    
    transition: max-height 0.5s;
    
}
.input-field input, .input-field select{
    width: 100%;
    background: transparent;
    border: 0;
    padding: 10px 5px;
    color: #3407d7;
    
}
.input-field i{
    margin-left: 10px;
    color: #999;
}
.btn-field{
    width: 100%;
    display: flex;
    justify-content: space-between;
    margin-top: 45px;
}
.btn-field a, .btn-field input,.btn-field button{
    flex-basis: 45%;
    background: rgb(247, 182, 4);
    color: #fff;
    height: 40px;
    border-radius: 20px;
    border: 0;
    outline: 0;
    cursor: pointer;
    transition: background 2s;
    text-align: center;
    text-decoration: none;
}
.input-group{
    height: 300px;

}
       body img{
        position: absolute;
        left:80%;
        top:60%;
    }
    .tab {
  float: left;
  border: 1px solid black;
  background-color: rgb(25 ,25 ,124);
  width: 25%;
  height: 100%;
  position: fixed;
  overflow:hidden;
}
.tab h1{
  text-align: center;
}
.tab i{
  padding: 50px 160px;
  font-size: 32px;
}
.tab a {
  display: block;
  background-color: inherit;
  color: white;
  padding: 22px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.6s;
  font-size: 20px;
  text-decoration: none;
}
.tab a:hover {
  background-color:rgb(70, 70, 233);
  border: 2px solid black;
  border-radius: 5px;
}
.tabcontent {
  float: right;
  padding: 50px 12px;
  width: 75%;
  border-left: none;
  height: 100%; 
}
.tab .active {
  background-color: white;
  border: none;
  border-right: none;
  border-top-left-radius: 30px;
  border-bottom-left-radius: 30px;
  text-align: center;
  color: black;
  border-top-right-radius: 0px;
}
</style>
</head>
<body style="height:auto;">
    
    <div class="tab">
        <h1 style="color: #fff;">DASHBOARD<hr></h1>
    <a href="dashboard.jsp" >Admin Table</a>
        <a href="user.jsp">User Table</a>
        <a href="cruise.jsp">Cruise Table</a>
        <a href="booking_details.jsp">Booking Details Table</a>
        <a href="room_details.jsp">Room Details Table</a>
        <a href="cruise_add.jsp" style="color:black;" class="active">Cruise Add</a>
        <a href="room_add.jsp" >Room Add</a>
       <a href="vacation_table.jsp">vacation Table</a>
       <a href="review.jsp">Review Table</a>

<i class="fa-solid fa-right-from-bracket" style="color: #fdfcfc;"></i>
    </div>
     <div class="tabcontent">
    <form method="POST" name="frmRegister" action="http://localhost:8080/MAJOR_PROJECT/cruise_add">
    <div class="form-box">
        <h1 id="title">ADD NEW CRUISE</h1>
        <div class="input-group" id="ingroup">
            <div class="input-field">   
                    <input type="text" required placeholder="package" name="package">
                </div>
            <div class="input-field">   
                    <input type="text" required placeholder="start_port" name="start_port">
                </div>
                
    <div class="input-field">
    <input type="text" id="nameField" required placeholder="START & END DATES" name="start_and_end">
    </div>
    <div class="input-field">   
    <input type="text" required placeholder="ROOM INSIDE" name="room_inside">
    </div>
    <div class="input-field">   
    <input type="text" required placeholder="SHIP NAME" name="ship_name">
    </div>
    <div class="input-field">
<select id="Cruise_Type" name="cruise_Type">
    <option value="Cruise">CRUISE_TYPE</option>
<option value="Luxury Cruises">Luxury Cruises</option>
<option value="Premium Cruises">Premium Cruises</option>
<option value="Deluxe Cruises">Deluxe Cruises</option>
<option value="River Cruises">River Cruises</option>
<option value="Expidition Cruises">Expidition Cruises</option>
<option value="Family Cruises">Family Cruises</option>
</select>
</div>
<div class="input-field">
    <select id="Cruise_Liner" name="cruise_Liner">
        <option value="Cruise">CRUISE LINER</option>
    <option value="Luxury Cruises">NCL</option>
    <option value="Premium Cruises">NCL</option>
    <option value="Deluxe Cruises">NCL</option>
    <option value="River Cruises">NCL</option>
    <option value="Expidition Cruises">NCL</option>
    <option value="Family Cruises">NCL</option>
    </select>
    </div>
    </div>
        <center><div class="btn-field">
                <input type="submit" name="sub" id="submit" value="Submit">
            </div></center>
    </div></form>
</div>
   
   
                
</body>
</html>