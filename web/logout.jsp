<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
        <style>
            body{
                background-color: white;
                background-image: url('bank_logo.png');
                background-repeat:no-repeat;
                background-size: 15%; 
                background-position: 625px 80px;
                }
            .navbar{
                background-color:   #a52834;
                margin-top: 0;
                }
            .message{
                color: red;
                text-align: center;
                font-size: 25px;
                margin-top:30%;
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
            <li><a href="index.jsp" >Home</a></li>        
            <li style="float: right" class="brand">Avlani Bank</li>
        </ul>
    </div>
        
        <div class="message">       
        <%
session.invalidate();
out.print("<h1>Successfully Logged out. Thanks for visiting</h1>");
%>
        </div>
    </body>
</html>
