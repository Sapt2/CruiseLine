<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Reset Page</title>
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
    </head>
    <body style="background: url(../images/1.jpeg)  center;background-size: cover; ">
        
         <%!
            String vemail, vpass;
            OracleConnection oconn;
            OraclePreparedStatement ost;
            HttpSession sess;
          
            %>
            <%
            if(request.getParameter("bConfirm")!=null)
            {
                if(request.getParameter("tpass").equals(request.getParameter("cpass")))
                {
                   sess = request.getSession(false);
                   vpass = request.getParameter("tpass");
                   vemail = sess.getAttribute("sessemail").toString();
                   DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                   oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                   ost =(OraclePreparedStatement) oconn.prepareStatement("update users set  PASSWORD=? where EMAIL=?");
                   ost.setString(1, vpass);
                   ost.setString(2, vemail);
                   int x = ost.executeUpdate();
                   ost.close();
                   oconn.close();
                   sess.invalidate();
                     %>
                    <script>
                    alert("Password reset successfully!!! You can now login using your new password");
                    
                    location.href="http://localhost:8080/MAJOR_PROJECT/frontend/test.html";
                </script>
                <%  
                }
                else
                {
                %>
                     <script>alert("Password do not matched!!, Try again..")</script>
                     <%
                }
            }
            else
            {
                   vemail = request.getParameter("pemail");
                   sess = request.getSession(true);
                   sess.setAttribute("sessemail", vemail);
                   %>
                  
                    <%
                   
            }   
            %>
        <form>
           <div class="form-box">
        <h1 id="title">Change Password</h1>
            <div class="input-field">
                    <i class="fa-solid fa-envelope"></i>
                   <input type="password" name="tpass" id="tpass" placeholder="New password" required>
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-key"></i>
                    <input type="password" name="cpass" id="cpass" placeholder="Confirm password" required>
                </div>
        
      
        
        <div class="btn-field">
            <input type="submit" name="bConfirm" id="" value="Confirm">
          
         </div>
             </div>
            </form>
    </body>
</html>