
<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Balance View Page</title>
        <style>
            .navbar{
                background-color:   #a52834;
                margin-top: 0;
                }
            ul 
            {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                border: 1px solid #e7e7e7;
                background-color: #a52834;
            }
            li {
                float: left;
            }
            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 16px 16px;
                text-decoration: none;
                font-size: 25px;
            }
            li a:hover {
                background-color: darkorange;
            }
            li a.active {
                color: white;
                background-color: #4CAF50;
            }
            .brand {
                display: block;
                color: yellow;
                text-align: center;
                padding: 16px 16px;
                font-size: 25px;
                font-weight: 200;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
       <div class="navbar">
		<ul>
		<li><a href="home.jsp">Back To Home</a></li>            
                <li><a href="index.jsp">Logout</a></li>
                <li style="float: right" class="brand">Avlani Bank</li>
		</ul>
	</div>
    <%
    out.print("<center><h1>Result:</h1></center>");
    int balance = 0;
    String pin = request.getParameter("pin");
    String cardno = request.getParameter("cardno");
    try{   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://localhost/jspproject","root","");
        PreparedStatement st = con.prepareStatement("select * from transactions where pin=?");
        st.setString(1, cardno); 
        ResultSet rs = st.executeQuery();
        ResultSetMetaData rsmd = rs.getMetaData();        
        while(rs.next())
        {
            if(rs.getString("mode").equals("Deposit")) 
            {
                balance += Integer.parseInt(rs.getString("amount"));
            }
            else
            {
                balance -= Integer.parseInt(rs.getString("amount"));
            }
    
    %>
    
<%  
    out.print("<table width=25% border=2>");
    out.print("<tr>");
    out.print("<br>");
    out.print("<tr><td>" + rsmd.getColumnName(2) + "</td>");
    out.print("<td>" + rs.getString(2) + "</td></tr>");
    out.print("<tr><td>" + rsmd.getColumnName(3) + "</td>");
    out.print("<td>" + rs.getString(3) + "</td></tr>");
    out.println("</table>"); 
%>

<%
    }
    out.println("Final balance is =  Rs. "+balance);   
    } 
    catch(Exception ex){
        out.println(ex);
    }
%>

</body>
</html>