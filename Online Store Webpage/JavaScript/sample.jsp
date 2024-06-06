<%@page import="java.util.*,java.io.*,java.sql.*" %>


<%
		
		int q=7;
		int id=1;
		int cost=0;
		int y=0;
		
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
			
			String sql="select * from product1 where pid=1";
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			
			if(rs.next()){
				String s=rs.getString(3);
			y=Integer.parseInt(s);
			out.println(rs.getString(3));
			if(q>y){
			out.println("hello");
			}
			else{
			out.println("hello");
			} }
		con.close();
		}
catch(Exception e){
			
		}


%>