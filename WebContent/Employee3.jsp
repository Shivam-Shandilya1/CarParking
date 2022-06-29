<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
			 <%@ page import="java.io.*,java.util.*,javax.mail.*"%>
			 <%@ page import="javax.mail.internet.*,javax.activation.*"%>
			 <%@ page import="javax.servlet.http.*,javax.servlet.*"%>
			 <%@page import="java.util.*"%>
			 <%@page import="java.sql.*"%>
			 <%@page import="java.io.*"%>




			 <%@ page import="java.io.*,java.util.*,javax.mail.*"%>
			 <%@ page import="javax.mail.internet.*,javax.activation.*"%>
			 <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
			 <%@page import="java.sql.*"%>
			 				<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
			 				<%@ page import="javax.mail.internet.*,javax.activation.*"%>
			 				<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
			 						
			 				
			 				

<%
String cmail=session.getAttribute("email").toString();
Random rand = new Random();

int otpp = rand.nextInt(100000);

// Print random integers
System.out.println("Random Integers: "+otpp);
session.setAttribute("myotp", otpp);
session.setAttribute("myemail", cmail);

try
	{
		
				
				
				String host="", user="", pass="";

				host ="smtp.gmail.com"; //"smtp.gmail.com";

				user ="januram513@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

				pass ="janakiram"; //Your gmail password

				String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

				String to =cmail; // out going email id

				String from ="januram513@gmail.com"; //Email id of the recipient
				String subject="Authentication Success";
				
				//String subject ="welcome";

				String messageText ="Hi Your LOGIN OTP:"+otpp+"";


				session.setAttribute("toaddress",to);
				boolean sessionDebug = true;

				Properties props = System.getProperties();
				props.put("mail.host", host);
				props.put("mail.transport.protocol.", "smtp");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.", "true");
				props.put("mail.smtp.port", "465");
				props.put("mail.smtp.socketFactory.fallback", "false");
				props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
				Session mailSession = Session.getDefaultInstance(props, null);
				mailSession.setDebug(sessionDebug);
				Message msg = new MimeMessage(mailSession);
				msg.setFrom(new InternetAddress(from));
				InternetAddress[] address = {new InternetAddress(to)};
				msg.setRecipients(Message.RecipientType.TO, address);
				msg.setSubject(subject);
				msg.setContent(messageText, "text/html; charset=utf-8"); // use setText if you want to send text
				Transport transport = mailSession.getTransport("smtp");
				transport.connect(host, user, pass);
				try 
				{
				transport.sendMessage(msg, msg.getAllRecipients());
				
				 response.sendRedirect("Employee2.jsp");

				//out.println("message successfully sended"); // assume it was sent
				//response.sendRedirect("sendcorier.jsp?message=Password is send to Your Mail Id");
				}
				catch (Exception err) {
					
					out.println("message not successfully sended"); // assume it’s a fail
					}
				transport.close();

		}
catch(Exception e)
{
	e.printStackTrace();
	}

%>

</body>
</html>