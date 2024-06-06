<%@page import="java.util.*,java.io.*,java.sql.*" %>


<%
		String qty=request.getParameter("quantity");
		int q=Integer.parseInt(qty);
		int id=5;
		int cost=0;
		int p=0;
		
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			
			String sql="select * from product1 where pid=5";
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				String s=rs.getString(3);
				p=Integer.parseInt(s);
				if(q>p q<=0){
					%>
                     <script>
                    alert("Invalid Quantity");
					</script>
                    <jsp:forward page="/DMSOreo.jsp" />
                    <%
				}
				else{
				String s1=rs.getString(4);
				cost=Integer.parseInt(s1)*q;
				int i=Integer.parseInt(s)-q;
				String sql1="update product1 set stock=? where pid=?";
				PreparedStatement pstmt1 = con.prepareStatement(sql1);
			pstmt1.setInt(1,i);
			pstmt1.setInt(2,id);
			int n1 = pstmt1.executeUpdate();
			
			
			
			String vsql = "insert into order1 values(?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(vsql);
			pstmt.setInt(1,id);
			pstmt.setString(2,qty);
			pstmt.setInt(3,cost);
			int n = pstmt.executeUpdate();
				
			
			if( n != 0 ){
				%>
                <jsp:include page="/success.html" />
                <%
				out.println("<br><br>");
				out.println("<center><h2>Your Ordered Product is:</h2></center>");
				out.println("<html><body><table border=2 align=center><tr>");
				out.println("<th>Product_Id</th><th>Product_Name</th><th>Total_Cost</th></tr>");
				out.println("<tr><td>"+id+"</td><td>Silk Oreo</td><td>"+cost+"</td></tr>");
				out.println("</table></body></html>");
			}
			}
			}
			con.close();
		}catch(Exception e){
			
		}
	
%>