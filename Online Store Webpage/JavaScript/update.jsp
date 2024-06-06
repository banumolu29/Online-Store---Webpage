<%@page import="java.util.*,java.io.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>update</title>
</head>
<body>
<br /><br /><br />
	<h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspNAVIGATION BAR</h3>	
	<div style="float:left;background-color:lightgrey;width:250px;height:400px"><h3>
    <ul>
    <li><a style='text-decoration:none' href="admin.html">Home</a></li><br><br>
    <li><a style='text-decoration:none' href="adminUserdetails.jsp">User Details</a></li><br><br>
    <li><a style='text-decoration:none' href="update.jsp">Product Details</a></li><br><br>
    <li><a style='text-decoration:none' href="queries.jsp">Customer Queries</a></li><br><br>
    <li><a style='text-decoration:none' href="order.jsp">Order Details</a></li><br><br>
    <li><a style='text-decoration:none' href="index1.html">Logout</a></li>
    </li></h3></div>
<h2><p style="margin:left;margin-left:35%;margin:top;margin-top:-5%">UPDATE PRODUCT DETAILS</p></h2>
	<br><br><table border="2"  style='margin:top;margin-top:0%;margin:left;margin-left:38%;'>
	<form action="updateEmp.jsp" method="post">
		<tr>
			<td>Product Id</td>
		<td><input type="text" name="id"><br></td>
	</tr>
	<tr>
			<td>Stock</td>
		<td><input type="text" name="stock"><br></td>
	</tr>
		<tr>
			<td>Cost</td>
			<td><input type="text" name="cost"><br></td>
		</tr>
		<tr>
			<td><input type="reset" value="CANCEL"></td>
		<td><input type="submit" value="UPDATE"></td>
	</tr>
	</form>
</table>
</body>
</html>

<jsp:include page="/product.jsp" />