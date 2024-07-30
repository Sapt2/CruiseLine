<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/style.css">
        <style>
        .form-box{
       width: 100%;
    max-width: 450px;
    box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
    position: relative;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
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
    height: 360px;

}
    </style>
        <script>
            function funClose()
            {
                if(window.parent) if(confirm("Closing window......") === true)  window.parent.window.close();    
                else if(confirm("Closing window......") === true) window.close();   
              }
         </script>     
    </head>
    <body style="background: url(../images/1.jpeg)  center;background-size: cover; ">
         <%!
            String vemail, vques, vans;
            OracleConnection oconn;
          OraclePreparedStatement ost;
          OracleResultSet ors = null;
            %>
        <%
            vemail = request.getParameter("pemail");
            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
            oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
           ost =(OraclePreparedStatement) oconn.prepareStatement("SELECT * FROM users where email=?");
            ost.setString(1, vemail);
            ors = (OracleResultSet) ost.executeQuery();
            if(ors.next()) 
            {
                vques = ors.getString("NAME"); //SQUES IS D COL NAME FOR SECURITY QUES IN UR DB
                vans = ors.getString("NAME");
            }
            else
            {
                 %>
                <script>
                    alert("Do not try any malaligned URL. \n You can only use  the link received in mail ");
                    window.close();
                </script>
                <%
            }
            ost.close();
            oconn.close();
            if(request.getParameter("bVerify")!=null)
            {
                if(request.getParameter("tbAns").equals(vans))
                {
                %>
                <script>
                    alert("Security Answer verified successfully!!!");
                    location.href="http://localhost:8080/MAJOR_PROJECT/frontend/NewPassword.jsp?pemail=<%=vemail%>";
                </script>
                <%
                }
                else
                {
                       %> 
                       <script>alert("Wrong Input!!, Try again");</script>                 
                        <%
                }
            }
            else
            {
                   %>
                   
                  
                    <%
            }   
            %> 
     
        <form name="frmSecurity" method="POST" action="http://localhost:8080/MAJOR_PROJECT/frontend/VerifyQues.jsp?pemail=<%=vemail%>">
          <div class="form-box">
        <h1 id="title">  Please verify your security credentials.</h1>
            <div class="input-field">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="text" size="30" name="tbQues" value="<%=vques%>" readonly />
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-key"></i>
                    <input type="text" size="30" name="tbAns" placeholder="type this above content" required/>
                </div>
        
        <div class="btn-field">
            <input type="submit" name="bVerify" id="" value="Verify">
             <input type="reset"  id="" value="Reset">
         </div>
             </div></form>
    </body>
</html>