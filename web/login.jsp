<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>Login Page</title>
        <style>
            body{
                background-color: white ;
                background: url('bank_logo.png'), url('login.png') ;
                background-repeat:no-repeat;
                background-size: 15%,15%; 
                background-position: 625px 80px, 400px 375px;
            }
            .frm{
                    background-color: #eee;
                    padding: 20px;
                    width: 20%;
                    margin-left: 45%;
                    margin-top:18%;
                    border: 2px solid #007b5e;
                    border-radius:20px;
                    height:250px;
            }
            .navbar{
                background-color:   #a52834;
                margin-top: 0;
                }
            ul{
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                border: 1px solid #e7e7e7;
                background-color: #a52834;
            }
            li{
                float: left;
            }
            li a{
                display: block;
                color: white;
                text-align: center;
                padding: 16px 16px;
                text-decoration: none;
                font-size: 25px;
            }
            li a:hover{
                background-color: darkorange;
            }
            li a.active{
                color: white;
                background-color: #4CAF50;
            }
            .brand{
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
                <li><a href="index.jsp">Home</a></li>
                <li><a href="login.jsp" class="active">Login</a></li>
                <li style="float: right" class="brand">Avlani Bank</li>
            </ul>
        </div>

    <div  class="container frm">
        <center><h2 style="color:darkorange;">Customer Login Form</h2></center>
        <hr>
	<br>
        <form action="login1.jsp" method="post" >
            <table>
                <tr>
                    <td>Account No.</td>
                    <td><input type="number" name="cardno"  style="border-radius:5px;width: 90%;" required /></td>
                </tr>
		<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr></tr>
                <tr>
                    <td>Password </td>
                    <td><input type="password" name="pin" style="border-radius:5px;width: 90%;" required  /></td>
                </tr>
            <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr>
            </table>
            <input type="submit" name=" submit" class="btn btn-info"  value="submit" >
            <span><a href="register.jsp"> New user ? </a> </span>
        </form>
    </div>
</body>
</html>
