<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver");%>
<%
        String name = request.getParameter("name");
        String sirname = request.getParameter("sirname");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String toa = request.getParameter("toa");
        String cardno = request.getParameter("cardno");
        String pin = request.getParameter("pin");
        String aadhar_card_no = request.getParameter("aadhar_card_no");
        String email = request.getParameter("email");
        String mobile_no = request.getParameter("mobile_no");
                
        Connection con;
        PreparedStatement pst1;
        
        PreparedStatement pst2;    
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/jspproject","root","");
        pst1= con.prepareStatement("insert into saveuser(name,sirname,gender,address,state,city,toa,cardno,pin,aadhar_card_no,email,mobile_no)values(?,?,?,?,?,?,?,?,?,?,?,?)");
            
        pst1.setString(1, name);
        pst1.setString(2, sirname);
        pst1.setString(3, gender);
        pst1.setString(4, address);
        pst1.setString(5, state);
        pst1.setString(6, city);
        pst1.setString(7, toa);
        pst1.setString(8, cardno);
        pst1.setString(9, pin);       
        pst1.setString(10, aadhar_card_no);
        pst1.setString(11, email);        
        pst1.setString(12, mobile_no);
        pst1.executeUpdate();
        
       
     
%>

<script>
    alert("Records Added Successfully.");
    alert("Welcome User to Avlani Bank");
</script>

<%  
                String redirect = "deposit.jsp";
                response.sendRedirect(redirect);
%>