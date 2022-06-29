<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="conn.DB"%>
	<%@page import="java.sql.*" %>
	<%@page import="java.sql.*"%>
	<%@page import="java.io.*"%>
	<%@page import="javax.servlet.*"%>
	<%@page import="java.security.MessageDigest" %>
    <%@page import="java.security.NoSuchAlgorithmException" %>
    <%@page import= "java.util.Properties"%>
	<%@page import="javax.mail.*"%>
	<%@page import="javax.mail.internet.*"%>
	<%
	Connection con=DB.getconn();
	Statement st=con.createStatement();
	
	if(request.getParameter("table").equalsIgnoreCase("REGISTER")){
		try{
		int a=st.executeUpdate("insert into login values('"+request.getParameter("la")+"','"+request.getParameter("fa")+"','"+request.getParameter("email")+"','"+request.getParameter("ps")+"','"+request.getParameter("ph")+"','"+request.getParameter("lac")+"') ");
		if(a>0){
			response.sendRedirect("regiseter.jsp?mes=successfully completed");
		}
		}
		catch(Exception e){
			response.sendRedirect("regiseter.jsp?mes=allready exit");
		}
	}
	if(request.getParameter("table").equalsIgnoreCase("ADMIN")){
		if(request.getParameter("email").equalsIgnoreCase("admin@gmail.com")&& request.getParameter("ps").equalsIgnoreCase("ADMIN")){
			response.sendRedirect("adminhome.jsp");
		}else{
			response.sendRedirect("admin.jsp?mes=Invalied email and password");
		}
		
	}
	if(request.getParameter("table").equalsIgnoreCase("USER LOGIN")){
		
	ResultSet rs=st.executeQuery("select * from login where EMAIL='"+request.getParameter("email")+"' and PASSWORD='"+request.getParameter("ps")+"' ");
		if(rs.next()){
			session.setAttribute("email",request.getParameter("email"));
			
			response.sendRedirect("Employee3.jsp");
		}else{
			response.sendRedirect("Employee.jsp?mes=Invalied username and password");
		}
	
	}
	if(request.getParameter("table").equals("add space")){
		
		int a=st.executeUpdate("insert into space(space_name,total_parking_car,available,cost) values('"+request.getParameter("sp")+"','"+request.getParameter("tt")+"','"+request.getParameter("tt")+"','"+request.getParameter("ct")+"')");
		if(a>0){
			response.sendRedirect("addparkingspace.jsp");
		}
		
		
	}
	if(request.getParameter("table").equals("parking")){
		String strDate;
		 Date date = new Date();  
		 SimpleDateFormat  formatter = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss");  
		    strDate = formatter.format(date);
		int a=st.executeUpdate("insert into parkingdealites(email_id,space_id,parking_id,starttime) values('"+session.getAttribute("email")+"','"+request.getParameter("id")+"','"+request.getParameter("pakid")+"','"+strDate+"')");
		ResultSet rs=st.executeQuery("select available from space where space_id='"+request.getParameter("id")+"'");
		rs.next();
		int number=rs.getInt(1)-1;
		
		a+=st.executeUpdate("update space set available='"+number+"'  where space_id='"+request.getParameter("id")+"' ");
		
		if(a>0){
			response.sendRedirect("view_space.jsp");
		}
	}
	if(request.getParameter("table").equals("update cost of space")){
		
		
		try{
		
int 	a=st.executeUpdate("update space set cost ='"+request.getParameter("ct")+"'  where space_id='"+request.getParameter("sp")+"' ");
		
		if(a>0){
			response.sendRedirect("view_emtey.jsp");
		}
		}
		catch(Exception e){
			out.print(e);
		}
	}
	if(request.getParameter("table").equals("payment")){
		
	int a=st.executeUpdate("DELETE FROM parkingdealites WHERE id='"+request.getParameter("sp")+"'");
	a+=st.executeUpdate("insert into payment values('"+session.getAttribute("email")+"','"+request.getParameter("sp")+"','"+request.getParameter("tt")+"','"+request.getParameter("cd")+"')");
	
	if(a>0){
		response.sendRedirect("remove_space.jsp");
	}
	
	}
	%>