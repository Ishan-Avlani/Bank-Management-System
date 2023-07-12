<%-- 
    Document   : home
    Created on : 29-Oct-2022, 5:25:30 pm
    Author     : hp Ishan Avlani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
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
            .text-footer {
                text-align: center;
                font-family: "Ubuntu", sans-serif;
                display: flex;
                justify-content: center;
            }
        </style>
    </head>
    
    <body>
        <div class="navbar">
            <ul>
                <li><a href="home.jsp" class="active">Home</a></li>        
                <li><a href="withdraw.jsp" >Withdraw </a></li>
                <li><a href="deposit.jsp">Deposit</a></li>
                <li><a href="balance.jsp" >View Balance/Statement</a></li>
                <li><a href="logout.jsp">Logout</a></li>
                <li style="float: right" class="brand">Avlani Bank</li>
            </ul>
        </div>
         
    <div style="margin-top:20%;">
        <br>
        <span style="color:darkorange;font-weight:400;margin-left:2%;margin-top:2%;font-size:30px;">CONTACT US</span>
        <hr style="width:36%;color:orange;margin-left:2%;">
        <pre style="line-height:1.7em;margin-left:2%;font-size:20px;"><span style="font-weight:400;color:#007b5e;font-size: 20px">Head Branch:</span> 
Rajkot , Gujarat , India
Mobile No. : 94XX07XXXX
Mail    : <span style="color:blue;">avlaniishan@gmail.com</span>
Owner of Bank : Ishan Sandip Avlani
</pre>
<hr style="width:59%;color:orange;margin-left:2%;">
<br>
<span style="color:darkgreen;font-weight:400;padding:15px;margin-left:1%;font-size:20px;"> *Bank is open Mon-fri , 9am to 4pm</span>
<footer>
    <p class="text-footer">
        Copyright @-All rights are reserved
    </p>
</footer>
        
    </div>
</body>
</html>
