<%@page import="java.util.*,java.io.*,java.sql.*" %>


<%
		String uname=request.getParameter("luname");
		String pwd=request.getParameter("lpass");

		

try{
		// connect with Database
		Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
      String vsql="select * from logindetails where uname=? and pwd=?";
      PreparedStatement pstmt=con.prepareStatement(vsql);
      pstmt.setString(1,uname);
      pstmt.setString(2,pwd);
      ResultSet rs=pstmt.executeQuery();

     
      if(rs.next()){
		  
		  if(!uname.equals("admin")){
		  
       %>
			  
			  <jsp:forward page="/home.html" />
              <%
		  }
		  
		  else{
			  %>
			  
			  <jsp:forward page="/admin.html" />
              <%
		  }
		
        
      }
      else{
        out.println("<br><br><p align='center'>Invalid Details</p>");
		%>
        <jsp:include page="/index1.html" />
        <%
      }
			
			
			con.close();

		}
		catch(Exception e){
		}

		
%>