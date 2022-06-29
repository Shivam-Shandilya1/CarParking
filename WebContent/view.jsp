<%@page import="java.util.ArrayList"%>
<%@page import="conn.DB"%>
<%@page import="java.sql.*" %>
<table cellspacing="20" width="100%" border="2"><caption>list of parking palce</caption> 
<% Connection con=DB.getconn();
Statement st=con.createStatement();
Statement st1=con.createStatement();
ArrayList<Integer> al=new ArrayList<Integer> ();

try{
ResultSet rs1=st1.executeQuery("select parking_id from parkingdealites where space_id='"+request.getParameter("val")+"'");
if(rs1.next()){
	do{
	al.add(rs1.getInt(1));
	}while(rs1.next());
}



ResultSet rs=st.executeQuery("select * from space where space_id='"+request.getParameter("val")+"'");
if(rs.next()){

int j=0;
int number=rs.getInt(2);
for(int i=1;i<=number/4;i++){
	
	%>
	
	<tr>
	
	<%for(int k=0;k<4;k++){
	
	if(!al.contains(j+1)){%>
	<th><a href='backend.jsp?table=parking&&id=<%=rs.getString(1)%>&&pakid=<%=++j%>'><img src="img/images.jpg"></a></th>
	<% }else{ j++;%>
	
	<th><img src="img/imagesred.jpg"></th>
	
	<%}%>
	
	
	<%
	
	}}
}else{
	out.print("please select another one");
}

}
catch(Exception e){
	out.print(e);
}
%>

</table>