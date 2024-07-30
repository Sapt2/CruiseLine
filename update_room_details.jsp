<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <style>
          *{
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
}
body{
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}
.update{
    height: 500px;
    width: 500px;
    background-color:rgba(107, 107, 107, 0.603);
    padding: 10px 0px;
    place-items: center;
    text-align: center;    
    border-radius: 5%;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.4);
}
.update hr{
    place-items: center;
    margin-left: 10%;
    margin-bottom: 50px;
}
.update h1{
    width: 100%;
    margin-top: 20px;
    margin-bottom: 30px;
    color: black;
}
.update label{
    font-size: 30px;
    color: white;
}
.update input{
    height: 30px;
    width: 80%;
    margin-bottom: 20px;
    border: none;
}
#submit_button{
    width: 350px;
    background-color:blue;
    margin-top: 50px;
    padding: 40px;
    padding-top: 10px;
    font-size: 30px;
    color:#fff;
    border-radius: 10px;
    cursor: pointer;
    border:none;
}
         </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%!         
               OracleConnection oconn;
               OraclePreparedStatement opst;
               OracleStatement ost;
               OracleResultSet ors; 
               OracleResultSetMetaData orsmd;
               String q,package1;
        %>
    </head>
    <body style="background:url('../images/form_back.jpg') no-repeat;background-size: cover;">
        <%
              package1=request.getParameter("package");
            //STEP 1 : REGISTERING OF THE REQUIRED DRIVER WITH THE JAVA PROGRAM
                //Class.forName("oracle.jdbc.OracleDriver");
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                
                 //STEP 2: INSTANTIATING THE CONNECTION OBJECT 
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");

                //STEP 4: CREATING THE QUERY
                q = "SELECT * from ROOM_DETAILS where package=?";
                opst=(OraclePreparedStatement)oconn.prepareStatement(q);
                opst.setString(1, package1);
                
                //STEP 5: INSTANTIATING STATEMENT OBJECT FOR EXECUTING SQL QUERIES
                ors =(OracleResultSet) opst.executeQuery();
                
                
                 //STEP 6: GETTING SYSTEM INFORMATION ABOUT THE FETCHED TABLE
                orsmd = (OracleResultSetMetaData)ors.getMetaData();
                
                
            %>
      
           <div class="update">
                
            <form action="http://localhost:8080/MAJOR_PROJECT/update_process_room_details" method="POST">
            
                    <%
                        
                        while(ors.next())
                        {
                             %>
                                <label>Package</label>
                                <input type="text"  name="package" value="<%=ors.getString(1)%>" readonly>
                                <br>
                                <label>Room<label><br>
                                <input type="text"  name="room" value="<%=ors.getString(2)%>">
                                <br>
                                <label>Amount<label>
                                <input type="text"  name="amount" value="<%=ors.getString(3)%>">
                                
                
                <%
                    }
                %>
                    <input type="submit" name="button" value="Submit" 
                     id="submit_button">
            
            </form>
        </div>
                    
     
    </body>
</html>
