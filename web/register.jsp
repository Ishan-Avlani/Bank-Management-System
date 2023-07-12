<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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
            <li><a href="login.jsp">Go Back</a></li>
            <li><a href="register.jsp" class="active">Register</a></li>
            <li style="float: right" class="brand">Avlani Bank</li>
        </ul>
    </div>
<br>
<form method="POST" action="register1.jsp">
    <table width="500px" border=0 align="center" style="background-color: #ffffcc;margin-top: 10%">
	
        <tr>
            <td colspan="2"  style="font-weight:bold;font-size:20pt;" align="center">Create Account<hr></td>
	</tr>
        
	<tr>
            <td  style="font-weight:bold;font-size:15pt;">First Name</td>
            <td><input type="text" name="name" id="name" ></td>
	</tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">Last Name</td>
            <td><input type="text" name="sirname" id="sirname" ></td>
	</tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">Gender</td>		
            <td><select name="gender" id="gender"> 
                    <option value="Gujarat">Male</option> 
                    <option value="Maharashtra">Female</option> 
                    <option value="Karanataka">Other</option> 
                </select>
            </td>
	</tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">Address</td>
            <td><textarea  name="address" rows=3 cols=20 id="address"></textarea></td>
	</tr>
        
        <tr>
            <td style="font-weight:bold;font-size:15pt;">State</td>
            <td><select name="state" id="state"> 
                    <option value="Gujarat">Gujarat</option> 
                    <option value="Maharashtra">Maharashtra</option> 
                    <option value="Karanataka">Karanataka</option> 
                    <option value="Tamil Nadu">Tamil Nadu</option> 
                </select>
            </td>
        </tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">City</td>
            <td><select name="city" id="city"> 
                    <option value="Rajkot">Rajkot</option> 
                    <option value="Mumbai">Mumbai</option> 
                    <option value="Karanataka">Bengalore</option> 
                    <option value="Chennai">Chennai</option> 
                </select>
            </td>
	</tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">Type of Account</td>
            <td><select name="toa" id="toa"> 
                    <option value="Saving">Saving</option> 
                    <option value="Fixed Deposit">Fixed Deposit</option> 
                    <option value="NRI">NRI</option> 
                    <option value="Recurring Deposit">Recurring Deposit</option> 
                </select>
            </td>
	</tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">Card No</td>
            <td><input type="text" name="cardno" id="cardno"></td>
	</tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">Pin No</td>
            <td><input type="text" name="pin" id="pin"></td>
	</tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">Aadhar Card No</td>
            <td><input type="text" name="aadhar_card_no" id="aadhar_card_no" ></td>
	</tr>
        
	<tr>
            <td style="font-weight:bold;font-size:15pt;">Email</td>
            <td><input type="text" name="email" id="email" ></td>
	</tr>
        
        <tr>
            <td style="font-weight:bold;font-size:15pt;">Mobile Number</td>
            <td><input type="text" name="mobile_no" id="mobile_no" ></td>
	</tr>
        
	<tr>
            <td></td>
            <td><input type="submit" name=" submit" class="btn btn-info"  value="submit" ></td>
	</tr>      
</table>   
</form>

<script type="text/javascript">
    document.getElementById('cardno').value = Math.floor(Math.random() * 10000);
</script>

    </body>
</html>
