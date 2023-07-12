<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver");%>
<%      int balance=0;
        String pin = request.getParameter("pin");       
        String amount = request.getParameter("amount");
       
        Connection con;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/jspproject","root","");
        
        Statement stmt;
        stmt =   con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from transactions where pin = '"+pin+"'");
        stmt.executeUpdate("insert into transactions values('"+pin+"', 'Deposit', '"+amount+"')");       
                   
%>

<%  
                String redirect = "home.jsp";
                response.sendRedirect(redirect);
%>

