<%@page import="java.util.*,java.io.*,java.sql.*" %>
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

<%


		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			String vsql = "select * from order1";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(vsql);
			out.println("<br><br><br><br>");
			out.println("<html><body bgcolor=lightblue>");
			out.println("<table border=2 style='margin:top;margin-top:-8%;margin:left;margin-left:40%;'>");
			out.println("<tr>");
			out.println("<th colspan=3><h2>ORDER DETAILS</th>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<th><h3>PRODUCT ID</h3></th>");
			out.println("<th><h3>QUANTITY</h3></th>");
			out.println("<th><h3>COST</h3></th>");
			out.println("</tr>");
			while(rs.next()){
				out.println("<tr>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			out.println("</body></html>");
			con.close();
		}catch(Exception e){
			
		}

%>




