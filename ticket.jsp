<%-- 
    Document   : tic
    Created on : 14 May, 2023, 3:22:19 PM
    Author     : Saptashwak Karmakar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%
    HttpSession sess=request.getSession(false);
                
    %>
                <%!
                OracleConnection oconn4; 
               OraclePreparedStatement opst4,opst5;
               OracleStatement ost4;
               OracleResultSet ors4; 
               OracleResultSetMetaData orsmd4;
               String cus_pck,cus_room,cus_person,cus_phone,cus_amt,cus_name,cus_mail;
               String a,n,m;
               %>
               <% 
                   
           cus_name=request.getParameter("final_name");
           cus_mail=request.getParameter("final_mail");
           cus_pck=request.getParameter("final_pck");
           cus_room=request.getParameter("final_room");
           cus_person=request.getParameter("final_person");
           cus_phone=request.getParameter("final_phone");
           cus_amt=request.getParameter("final_amt");
            
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                
                 //STEP 2: INSTANTIATING THE CONNECTION OBJECT 
                oconn4 = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                
                //STEP 3: CREATING THE QUERY
                String q = "INSERT INTO BOOKING_DETAILS(NAME,EMAIL,PHONE_NO,PACKAGE,ROOM,HEAD,AMOUNT) values(?,?,?,?,?,?,?)";
            
                //STEP 4: INSTANTIATING STATEMENT OBJECT FOR EXECUTING SQL QUERIES
                opst4 =(OraclePreparedStatement) oconn4.prepareStatement(q);
                
                
                //STEP 6: FILLING THE BLANK VALUES OF THE QUERY MARKED WITH ? 
                opst4.setString(1,cus_name);
                opst4.setString(2,cus_mail);
                opst4.setString(3,cus_phone);
                opst4.setString(4,cus_pck);
                opst4.setString(5,cus_room);
                opst4.setString(6,cus_person);
                opst4.setString(7,cus_amt);
                
                //STEP 7: EXECUTING THE QUERY
                
                opst4.executeUpdate();
                %>
                <%
                    String q1 = "select * from CRUISE_DETAILS where PACKAGE=?";
                opst5=(OraclePreparedStatement)oconn4.prepareStatement(q1);
                opst5.setString(1,cus_pck);              
                ors4 = (OracleResultSet)opst5.executeQuery();
                orsmd4 = (OracleResultSetMetaData)ors4.getMetaData();
                %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js "></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css'>
  <link rel="stylesheet" href="../css/ticket.css">
  <link rel="stylesheet" href="../css/home.css">
  
  <style>
      #printButton{
    width: 30%;
    height:50px;
    background-color: rgb(25,25,124);
    text-align: center;
    font-size:20px;
    cursor:pointer;
    border-radius: 40px;
}
  </style>
</head>
<body>
<!-- partial:index.partial.html -->
<div class="container">

	<div class="ticket basic">
		<p>Admit One</p>
	</div>

	<div class="ticket airline">
		<div class="top">
			
			<div class="big">
<!--				<p class="from">PEARL</p>
				<p class="to">CRUISE LINE</p>-->
<img src="../images/newlogo.png" style="width: 40%;">
          <span style="font-size: 30px;color:white;">
          <i> Pearl <small style="color:rgb(247, 182, 4);font-size: 20px;">Cruise</small> Line</i>
          </span>
			</div>
		</div>
		<div class="bottom">
                    <%
                            while(ors4.next())
                            {
                            %>
			<div class="column">
				<div class="row row-1">
					<p><span>USER:</span><%out.println(sess.getAttribute("name"));%></p>
					<p class="row--right"><span>PACKAGE:</span><%=cus_pck%></p>
				</div>
				<div class="row row-2">
					<p><span>STARTING POINT</span><%=ors4.getString(2)%></p>
					<p class="row--center"><span>DESTINATION</span><%=ors4.getString(3)%></p>
					<p class="row--right"><span>DATE</span><%=ors4.getString(4)%></p>
				</div>
                                <div class="row row-2">
					<p><span>CRUISE NAME</span><%=ors4.getString(5)%></p>
					<p class="row--center"><span>CRUISE TYPE</span><%=ors4.getString(6)%></p>
					<p class="row--right"><span>CRUISELINER</span><%=ors4.getString(7)%></p>
				</div>
				<div class="row row-3">
					<p><span>ROOM</span><%=cus_room%></p>
					<p class="row--center"><span>NO. OF HEADS</span><%=cus_person%></p>
					<p class="row--right"><span>TOTAL PRICE</span><%=cus_amt%></p>
				</div>
                             <p style="padding-top:10px;">The best time for a new beginning is right now. Good luck for your new journey.</p>
			</div>
                                <%
                           }
                            %>
                   
<div class="bar"> 
    <img src ="https://chart.googleapis.com/chart?cht=qr&chl=Hello+World&chs=160x160&chld=L|0"  
        class = "qr-code img-thumbnail img-responsive" /> </div>
    <center><button id="printButton" class="printbt" onclick="print()">Download</button></center>
</div>
</div>

</div>
<!-- partial -->

</body>
</html>

