<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%   
    String cardno=request.getParameter("cardno");  
    String pin=request.getParameter("pin"); 
    Class.forName("com.mysql.jdbc.Driver"); 
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspproject","root",""); 
    Statement st= con.createStatement(); 
    ResultSet rs=st.executeQuery("select * from saveuser where cardno = '"+cardno+"' and pin = '"+pin+"'"); 
    try{
            if(rs.next())        
            {  
                String redirect = "home.jsp";
                response.sendRedirect(redirect);
            } 
            else
            {
                out.println("Invalid password or username.");
            }			
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }    
%>
