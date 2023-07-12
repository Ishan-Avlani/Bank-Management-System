<%-- 
    Document   : withdraw1
    Created on : 11-Nov-2022, 6:49:30 pm
    Author     : hp Ishan Avlani
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver");%>
<%         
        int balance=0;
        String pin = request.getParameter("pin");       
        int amount = Integer.parseInt(request.getParameter("amount"));
        
        Connection con;
        Statement stmt;
            
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/jspproject","root","");
        stmt =   con.createStatement();
                
        ResultSet rs = stmt.executeQuery("select * from transactions where pin = '"+pin+"'");

        while(rs.next()){
           if(rs.getString("mode").equals("Deposit")){
               balance += Integer.parseInt(rs.getString("amount"));
           }else{
               balance -= Integer.parseInt(rs.getString("amount"));
           }
        }
        
        if(balance < (amount)){
            out.print("<h1> Sorry User, You Don't Have Enough Balance to Withdraw Money</h1> <br />");
            out.println("<html>");
            out.println("<body>");
            out.println("<a href='home.jsp'>");
            out.println("<h1> Go Back To Home Page </h1>");
            out.println("</a>");
            out.println("</body>");
            out.println("</html>");                 
        }
        else {
            response.sendRedirect("home.jsp");
        } 
        stmt.executeUpdate("insert into transactions values('"+pin+"', 'Withdrawl', '"+amount+"')");
                    
%>

