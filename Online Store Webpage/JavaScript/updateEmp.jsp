<%@page import="java.util.*,java.io.*,java.sql.*" %>

<%
		String pid=request.getParameter("id");
		String stock=request.getParameter("stock");
		String cost=request.getParameter("cost");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			String vsql = "update product1 set stock=?,cost=? where pid=?";
			PreparedStatement pstmt = con.prepareStatement(vsql);
			
			pstmt.setString(1,stock);
			pstmt.setString(2,cost);
			pstmt.setString(3,pid);
			int n = pstmt.executeUpdate();
			if( n != 0 ){
				out.println("<br><br><br><br>");  
				out.println("<h3><p  style='margin:left;margin-left:35%;margin:top;margin-top:-5%'>Product id "+pid+" Details have been Updated</center></h3>");
				%>
                 <jsp:include page="/update.jsp" />
               
                 <%
			}
		}catch(Exception e){
			
		}
	
%>