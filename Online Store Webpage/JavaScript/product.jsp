<%@page import="java.util.*,java.io.*,java.sql.*" %>


<%


		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			String vsql = "select * from product1";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(vsql);
			out.println("<br><br><br><br>");
			out.println("<html><body bgcolor=lightblue>");
			out.println("<table border=2 style='margin:top;margin-top:0%;margin:left;margin-left:32.5%;'>");
			out.println("<tr>");
			out.println("<th colspan=4><h2>PRODUCT DETAILS</th>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<th><h3>PRODUCT ID</h3></th>");
			out.println("<th><h3>PRODUCT NAME</h3></th>");
			out.println("<th><h3>STOCK</h3></th>");
			out.println("<th><h3>COST</h3></th>");
			out.println("</tr>");
			while(rs.next()){
				out.println("<tr>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
			
				out.println("</tr>");
			}
			out.println("</table>");
			out.println("</body></html>");
			con.close();
		}catch(Exception e){
			
		}

%>




