<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String a1=request.getParameter("a1");
String a2=request.getParameter("a2");

System.out.println("dsdsds");

String b1=session.getAttribute("myemail").toString();
String b2=session.getAttribute("myotp").toString();

System.out.println("dsdsds");

if(a1.equalsIgnoreCase(b1)&&a2.equalsIgnoreCase(b2)){
out.println("dsdsds");

response.sendRedirect("userhome.jsp");

}
else{
	response.sendRedirect("Employee.jsp?msg=Invalid details");

	out.println("mmmmmm");
}

%>
</body>
</html>