<%@page import="java.util.*,java.io.*,java.sql.*"%>


<%
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pass");
		String name=request.getParameter("name");
		


		// connect with Database
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			String sql="select * from logindetails where uname=?";
			PreparedStatement pstmt1=con.prepareStatement(sql);
			pstmt1.setString(1,uname);
			ResultSet rs=pstmt1.executeQuery();
			if(rs.next()){
					out.println("<br><br><h3 align='center'>Username already available</h3>");
					%>
                    <jsp:include page="/index1.html" />
                    <%

			}
			else{
				String vsql="insert into logindetails values(?,?,?)";
				PreparedStatement pstmt=con.prepareStatement(vsql);
				pstmt.setString(1,name);
				pstmt.setString(2,uname);
				pstmt.setString(3,pwd);
				int n=pstmt.executeUpdate();

				if(n!=0){
				out.println("<br><br><h3 align='center'>Data inserted successfully</h3>");
				%>
                    <jsp:include page="/index1.html" />
                    <%
				
				}
				else{
				out.println("<br><br><h3 align ='center'>Insertion failed</h3>");
				%>
                    <jsp:include page="/index1.html" />
                    <%
				}
			}
			
			con.close();

		}
		catch(Exception e){
		

		}
		
%>