<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%!
               OracleConnection oconn3; 
               OraclePreparedStatement opst3;
               OracleStatement ost3;
               OracleResultSet ors3; 
               OracleResultSetMetaData orsmd3;
               String z;
               String r,f,g,p,phone;
               String new_z,new_p,new_r,new_phone;
               int a;
       %>
       <%@include file="scroll.jsp"%>
    <%
      HttpSession sess=request.getSession(false);                
      %>
       <%
            z=request.getParameter("final");
            new_z=z;
            r=request.getParameter("room");
            new_r=r;
            p=request.getParameter("person");
            new_p=p;
            phone=request.getParameter("phone_no");
            new_phone=phone;
            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                oconn3 = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                f = "select AMOUNT from ROOM_DETAILS where PACKAGE=? and ROOM=?";
                opst3=(OraclePreparedStatement)oconn3.prepareStatement(f);
                opst3.setString(1,z);
                opst3.setString(2,r);
                ors3 = (OracleResultSet)opst3.executeQuery();
                orsmd3 = (OracleResultSetMetaData)ors3.getMetaData();
                
                %>
                <%   
                  while(ors3.next())
                   {%>
                    <% g = ors3.getString(1);%>
                          
                  <% }%>
                  
                  <% 
                       a= Integer.parseInt(p) * Integer.parseInt(g);
                     
                    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/payment.css">

</head>
<body>
<div class="container">
    
    <div class="card-container">

        <div class="front">
            <div class="image">
                <img src="../images/chip.png" alt="">
                <img src="../images/visa.png" alt="">
            </div>
            <div class="card-number-box">################</div>
            <div class="flexbox">
                <div class="box">
                    <span>card holder</span>
                    <div class="card-holder-name">full name</div>
                </div>
                <div class="box">
                    <span>expires</span>
                    <div class="expiration">
                        <span class="exp-month">mm</span>
                        <span class="exp-year">yy</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="back">
            <div class="stripe"></div>
            <div class="box">
                <span>cvv</span>
                <div class="cvv-box"></div>
                <img src="../images/payment/visa.png" alt="">
            </div>
        </div>

    </div>

    <form action="ticket.jsp">
        <div class="inputBox">
            <span>card number</span>
            <input type="text" maxlength="16" class="card-number-input">
        </div>
        <div class="inputBox">
            <span>card holder</span>
            <input type="text" class="card-holder-input">
        </div>
        <div class="flexbox">
            <div class="inputBox">
                <span>expiration mm</span>
                <select name="" id="" class="month-input">
                    <option value="month" selected disabled>month</option>
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
            </div>
            <div class="inputBox">
                <span>expiration yy</span>
                <select name="" id="" class="year-input">
                    <option value="year" selected disabled>year</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <option value="2028">2028</option>
                    <option value="2029">2029</option>
                    <option value="2030">2030</option>
                </select>
            </div>
            <div class="inputBox">
                <span>cvv</span>
                <input type="text" maxlength="4" class="cvv-input">
            </div>
    
        </div>
        <div class="imag">
            
            <img src="../images/visaa.png" class="visa" top="">
            <img src="../images/mastercard-removebg-preview.png" alt="">
            <img src="../images/rupay.png" alt=""class="rupay">
        </div>
        <input value="<%out.println(sess.getAttribute("name"));%>" name="final_name" type="text" hidden>
        <input value="<%out.println(sess.getAttribute("mail"));%>" name="final_mail" type="text" hidden>
        <input value="<%out.println(new_z);%>" name="final_pck" type="text" hidden>
        <input value="<%out.println(new_p);%>" name="final_person" type="text" hidden>
        <input value="<%out.println(new_r);%>" name="final_room" type="text" hidden>
        <input value="<%out.println(new_phone);%>" name="final_phone" type="text" hidden>
        <input value="$<%=a%>"  name="final_amt" type="text" hidden>
        <input type="submit" value="PAY $<%=a%>" class="submit-btn">
    </form>

</div>   



<script>

document.querySelector('.card-number-input').oninput = () =>{
    document.querySelector('.card-number-box').innerText = document.querySelector('.card-number-input').value;
}

document.querySelector('.card-holder-input').oninput = () =>{
    document.querySelector('.card-holder-name').innerText = document.querySelector('.card-holder-input').value;
}

document.querySelector('.month-input').oninput = () =>{
    document.querySelector('.exp-month').innerText = document.querySelector('.month-input').value;
}

document.querySelector('.year-input').oninput = () =>{
    document.querySelector('.exp-year').innerText = document.querySelector('.year-input').value;
}

document.querySelector('.cvv-input').onmouseenter = () =>{
    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(-180deg)';
    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(0deg)';
}

document.querySelector('.cvv-input').onmouseleave = () =>{
    document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(0deg)';
    document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(180deg)';
}

document.querySelector('.cvv-input').oninput = () =>{
    document.querySelector('.cvv-box').innerText = document.querySelector('.cvv-input').value;
}

</script>
</body>
</html>