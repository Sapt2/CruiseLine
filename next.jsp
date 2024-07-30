
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
               OracleConnection oconn3; 
               OraclePreparedStatement opst3;
               OracleStatement ost3;
               OracleResultSet ors3; 
               OracleResultSetMetaData orsmd3;
               String z="INDIA_P1";
               String r,f,g,p;
               int a;
       %>
       <%
            r=request.getParameter("room");
            p=request.getParameter("person");
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
                     <%=a%>
        <%
            oconn3.close();
            opst3.close();
            ors3.close();
            %>     