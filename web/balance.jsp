
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Balance View page</title>
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
            .frm {
                    background-color: #eee;
                    padding: 20px;
                    width: 20%;
                    margin-left:40%;
                    margin-top:20%;
                    border: 2px solid #007b5e;
                    border-radius:20px;
                    height:250px;
            }
        </style>
    </head>
    <body>
        <div class="navbar">
            <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="withdraw.jsp" >Withdraw </a></li>
            <li><a href="deposit.jsp" >Deposit</a></li>
            <li><a href="balance.jsp" class="active">View Balance/Statement</a></li>
            <li><a href="index.jsp">Logout</a></li>
            <li style="float: right" class="brand">Avlani Bank</li>
            </ul>
	</div>
    <div  class="container frm">
        <h2 style="color:darkorange;">View Bank Statement</h2>
        <hr>
        <br>
        <form  method="post" action="balance1.jsp">
            <table>
                <tr>
                    <td>Pin No.</td>
                    <td><input type="text" name="cardno"  style="border-radius:5px;width: 90%;" required /></td>
                </tr>
                <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr></tr>               
                <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr>
            </table>
            <input type="submit" name=" submit" class="btn btn-info"  value="submit" >   
        </form>
    </div>
        
    </body>
</html>