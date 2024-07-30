<%-- 
    Document   : cruise
    Created on : May 17, 2023, 7:22:39 PM
    Author     : risit
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
         <style>
             body img{
        position: absolute;
        left:80%;
        top:60%;
    }
 table, tr, td
            {
                margin: auto;
                padding: 10px;
                border: 3px solid darkblue;
                border-collapse: collapse;
                width: 50%;
            }
th
            {
                padding: 10px;
                border: 3px solid darkblue;
                border-collapse: collapse;
                color: black;
 }

.tab {
  float: left;
  border: 1px solid black;
  background-color: rgb(25 ,25 ,124);
  width: 25%;
  height: 100%;
  position: fixed;
}
.tab h1{
  text-align: center;
}
.tab i{
  padding: 50px 160px;
  font-size: 32px;
}

 /*Style the buttons that are used to open the tab content*/ 
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
}
.tab a{
 text-decoration: none;
 color:white;
}


/* Change background color of buttons on hover */
.tab a :hover {
  background-color:rgb(70, 70, 233);
  border: 2px solid black;
  border-radius: 5px;

}

 /*Style the tab content*/ 
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
<script>
            function funDelete()
            {
                if (confirm("Are you sure you want to delete the record?") === true)
                    return true;
                else
                    return false;
            }
        </script>
        <%!
                OracleConnection oconn;
                OracleStatement ost;
                OracleResultSet ors;
                OracleResultSetMetaData orsmd;
                OraclePreparedStatement opst;
                String q;
            %>

    </head>
    <body>
        
    <div class="tab">
        <h1 style="color: #fff;">DASHBOARD<hr></h1>
        <a href="dashboard.jsp" style="color:black;" class="active">Admin Table</a>
        <a href="user.jsp">User Table</a>
        <a href="cruise.jsp">Cruise Table</a>
        <a href="booking_details.jsp">Booking Details Table</a>
        <a href="room_details.jsp">Room Details Table</a>
        <a href="cruise_add.jsp">Cruise Add</a>
        <a href="room_add.jsp">Room Add</a>
       <a href="vacation_table.jsp">vacation Table</a>
       <a href="review.jsp">Review Table</a>

<i class="fa-solid fa-right-from-bracket" style="color: #fdfcfc;"></i>    </div>
    
        <div id="admin" class="tabcontent"><center>
            <form method="POST" action="search.jsp">
                    <input type="text" placeholder="Enter User to search" name="tSearch" style="width: 500px; height: 25px" required>
                    <input type="submit" name="bSearch" style="height: 30px; width: 100px; font-style: italic" value="Search">
            </form></center>
            <br>
        <%
      //STEP 1 : REGISTERING OF THE REQUIRED DRIVER WITH THE JAVA PROGRAM
                //Class.forName("oracle.jdbc.OracleDriver");
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                
                 //STEP 2: INSTANTIATING THE CONNECTION OBJECT 
                oconn= (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                
                ost= (OracleStatement)oconn.createStatement();
                
      %>
    <% 
                //STEP 4: CREATING THE QUERY
                String q = "SELECT * FROM ADMIN";
            
                //STEP 5: INSTANTIATING STATEMENT OBJECT FOR EXECUTING SQL QUERIES
                ors =(OracleResultSet) ost.executeQuery(q);
                
                 //STEP 6: GETTING SYSTEM INFORMATION ABOUT THE FETCHED TABLE
                orsmd = (OracleResultSetMetaData)ors.getMetaData();
            %>
   <table>
                <thead>
                    <tr>
                    <%
                        for(int i = 1; i<= orsmd.getColumnCount(); i ++)
                        {
                        %>
                            <th><%=orsmd.getColumnName(i)%></th>
                        <%
                            }
                            %>
                          
                </tr>
                </thead>
                <tbody>
                     <%
                            while(ors.next())
                            {
                            %>
                    <tr>
                        <%
                            for(int i=1; i <= 3; i++)
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
                <tfoot></tfoot>
            </table>
  </div>
    </body>
</html>
