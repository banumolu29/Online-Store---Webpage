<%@page import="java.util.*,java.io.*,java.sql.*" %>


<html>
<head>
<style>
    body {
     background-color: #F7F0D7 ;     
}
    .topnav {
  overflow: hidden;
  background-color: saddlebrown;
    border-radius: 20px;
       
  
}
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;

}

.topnav a:hover {
  background-color: #D5FFFE;
  color: black;
  
}

.topnav a.active {
  background-color: blue;
  color: white;

}

 .topnav a.alltime {
  background-color: green;
  color: white;

}
    .zoom {
  transition: transform .2s; /* Animation */
}

.zoom:hover {
  transform: scale(1.2); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
}
    .d1{
        height: 50%;
        width: 30%;
        background-color: saddlebrown;
        margin-top:3%; 
        float: left;
        margin-left:5%
    }
    .d2{
        height: 50%;
        width:60%;
        margin-right: 1%;
        float:right;
        background-color: #F7F0D7;
        margin-top: 3%;
        
    }
	.button {
  border-radius: 8px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 15px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
.button input[type="submit"]{
	background-color:#f4511e;
	border:none;
	font-size:24px;
	color:#FFFFFF;
	
}
input[type="number"]{
	border-radius: 8px;
  font-size: 18px;
  padding: 7px;
  width: 170px;
  margin: 1px;
	
}
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
    </style>
    </head>
    
    <body>
     <div align="center">
    
    <img  height=300px width=400px src=logo.png >
        </div>

<div class="topnav">
  <a href="home.html" >Home</a>
  <a class="active" href="products.html" >Our Products</a>
  <a href="contact.html" >Contact</a>
    <a href="aboutus.html" >About us</a>
   <a href="index1.html" class="alltime" style="float: right;">Logout</a>
  
</div>
    
    <div class="d1 zoom"><img src=hes2.jpeg height=100% width=100%></div>
   <div class="d2">
        <h1> Hershey's Almond Joy</h1><br>
    <br>

        <h3> Description</h3>
    <ul>
        <li>Perfect for everyday snacking, sharing, and holiday celebrations.</li>
    <li> A delicious combination of coconut and crunchy almonds covered in milk chocolate.</li>
    <li> Gluten free and kosher almond candy. </li>
	
    </ul>
 <%
try{
		// connect with Database
	Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
      String vsql="select * from product1 where pid=13";
      Statement pstmt=con.createStatement();
      ResultSet rs=pstmt.executeQuery(vsql);
	  
	  
	  
	  while(rs.next()){
	  out.println("<p><b>Available in stock:</b>"+"  "+rs.getString(3)+"</p>");
	  out.println("<p><b>Cost per Quantity:</b>"+"  "+rs.getString(4)+"</p>");
	  }
	  con.close();
	 
}
catch(Exception e){
		}
%>
<h3>Enter Quantity:</h3>
<form action="d13.jsp" method="post"> 
<input type="number" name="quantity" placeholder="quantity"><br><br>
<div class="button">
<span><input type="submit" value="BUY"></span>
</div>
</form>




          
    </div> 
   
   
    
    </body>
</html>