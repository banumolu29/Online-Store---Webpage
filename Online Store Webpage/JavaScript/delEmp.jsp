<%@page import="java.util.*,java.io.*,java.sql.*" %>


<%
		String id=request.getParameter("uname");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			String vsql = "delete from logindetails where uname=?";
			PreparedStatement pstmt = con.prepareStatement(vsql);
			pstmt.setString(1,id);
			int n = pstmt.executeUpdate();
			if( n != 0 ){
				%>
                 <jsp:forward page="/adminUserdetails.jsp" />
                 <%
			}
		}catch(Exception e){
			
		}
	
%>