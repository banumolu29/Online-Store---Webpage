<%@page import="java.util.*,java.io.*,java.sql.*" %>

<%
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pno=request.getParameter("pno");
		String desc=request.getParameter("desc");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			String vsql = "insert into query values(?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(vsql);
			
			pstmt.setString(1,name);
			pstmt.setString(2,email);
			pstmt.setString(3,pno);
			pstmt.setString(4,desc);
			int n = pstmt.executeUpdate();
			if( n != 0 ){ 
				%>
                 <jsp:include page="/contact.html" />
               
                 <%
				 out.println("<center>Thank you</center>");
			}
		}catch(Exception e){
			
		}
	
%>