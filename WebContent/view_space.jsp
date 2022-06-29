<!DOCTYPE html>
<%@page import="conn.DB"%>
<%@page import="java.sql.*" %>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
       
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.css">
        <link rel="stylesheet" href="css/custom-styles.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/component.css">
        <link rel="stylesheet" href="css/font-awesome-ie7.css">

        <script src="js/modernizr.custom.js"></script>
        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
       <script>  
var request;  
function myFunction() 
{  
	var x = document.getElementById("mySelect").value;
  
var url="view.jsp?val="+x;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('amit').innerHTML=val;  
}  
}  
  
</script>  
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->
            <div class="header-wrapper">
                <div class="container">
                    <div class="row-fluid">
                    
                        <div class="site-name">
                            <h1>multistoried a parking system</h1>
                        </div>
                    
                    
                        <div class="menu-icons">
                            <ul>
                                
                            </ul>
                        </div>
                        <div class="cust-form">
                           
                        </div>
                    
                    </div>
                </div>
            </div>
            <div class="container">
            <div class="menu">
                
                        <div class="navbar">
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                <i class="fw-icon-th-list"></i>
                            </a>
                            <div class="nav-collapse collapse">
                                <ul class="nav">
                                    <%@include file="userheader.jsp" %>
                                </ul>
                            </div><!--/.nav-collapse -->
                        </div>
						<div class="mini-menu">
            <label>
          <select class="selectnav">
            <option value="#" selected="">Home</option>
            <option value="#">About</option>
            <option value="#">→ Another action</option>
            <option value="#">→ Something else here</option>
            <option value="#">→ Another action</option>
            <option value="#">→ Something else here</option>
            <option value="#">Services</option>
            <option value="#">Work</option>
            <option value="#">Contact</option>
          </select>
          </label>
          </div>
                    
            </div>
            </div>
            <div class="container bg-white">
                
               
            </div>

            <div class="container bg-white">
                <div class="row-fluid">
                
                
                 
                            <div class="featured-images">
                            <ul class="grid effect-8" id="grid">
                              <li>
                                <div class="block">
                                
                                       
		<center>
		<select id="mySelect" onchange="myFunction()">
		<option value="0">select</option>
		<% Connection con=DB.getconn();
		Statement st=con.createStatement();
	 	ResultSet rs=st.executeQuery("select * from space");
		
		if(rs.next()){
			do{
				out.print("<option value="+rs.getString(1)+">"+rs.getString(5)+"");
			}while(rs.next());
		}
		%>
		</select>
		</center>		
		<span id="amit"> </span> 
						
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>			 
		
						
                                </div>
                              </li>
                            </ul>
                              
                            </div> 
                    
                </div>
            </div>
                    
                    <div class="container">
                     
                   
                  </div>
                    

                  <!--   <div class="site-footer">
                        <div class="container">
                           
                            <div class="row-fluid">
                                
                                <div class="span2">
                                    <div class="block">
                                     <h5>lorem ipsum</h5>
                                     <ul>
                                         <li><a href="#">Nunc dignissim risus </a></li>
                                         <li><a href="#">Cras ornare trist</a></li>
                                         <li><a href="#">Vivamus vestibul</a></li>
                                         <li class="border-none"><a href="#">Praesent placerat ri</a></li>
                                     </ul>
                                 </div>
                                </div>
                                <div class="span2">
                                    <div class="block">
                                     <h5>sedlu prase</h5>
                                     <ul>
                                         <li><a href="#">Nunc dignissim risus </a></li>
                                         <li><a href="#">Cras ornare trist</a></li>
                                         <li><a href="#">Vivamus vestibul</a></li>
                                         <li class="border-none"><a href="#">Praesent placerat ri</a></li>
                                     </ul>
                                 </div>
                                </div>
                                <div class="span2">
                                   <div class="block">
                                     <h5>commod quis</h5>
                                     <ul>
                                         <li><a href="#">Nunc dignissim risus </a></li>
                                         <li><a href="#">Cras ornare trist</a></li>
                                         <li><a href="#">Vivamus vestibul</a></li>
                                         <li class="border-none"><a href="#">Praesent placerat ri</a></li>
                                     </ul>
                                 </div> 
                                </div>
                                <div class="span2">
                                   <div class="block">
                                     <h5>voluptat sin</h5>
                                     <ul>
                                         <li><a href="#">Nunc dignissim risus </a></li>
                                         <li><a href="#">Cras ornare trist</a></li>
                                         <li><a href="#">Vivamus vestibul</a></li>
                                         <li class="border-none"><a href="#">Praesent placerat ri</a></li>
                                     </ul>
                                 </div> 
                                </div>
                                <div class="span2">
                                  <div class="block">
                                     <h5>necant ipons</h5>
                                     <ul>
                                         <li><a href="#">Nunc dignissim risus </a></li>
                                         <li><a href="#">Cras ornare trist</a></li>
                                         <li><a href="#">Vivamus vestibul</a></li>
                                         <li class="border-none"><a href="#">Praesent placerat ri</a></li>
                                     </ul>
                                 </div>  
                                </div> 
                            </div>
                            
                       
                        </div>
                    </div>

                    <div class="wrap bg-black">
                      <div class="container ">
                        <div class="row-fluid">
                          <div class="span12">
                            <div class="copy-rights">
                            Copyright(c) website name. <span>Designed by: <a href="http://www.alltemplateneeds.com">www.alltemplateneeds.com</a></span> / Images from: <a href="http://www.wallcoo.net"> www.wallcoo.net</a> 
                            </div>
                          </div>
                        </div>
                      </div>
                    </div> -->
        
       <script src="js/jquery-1.9.1.js"></script> 
<script src="js/bootstrap.js"></script>
<script src="js/masonry.pkgd.min.js"></script>
    <script src="js/imagesloaded.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/AnimOnScroll.js"></script>
    
    <script>
      new AnimOnScroll( document.getElementById( 'grid' ), {
        minDuration : 0.4,
        maxDuration : 0.7,
        viewportFactor : 0.2
      } );
    </script>
<script>
$('#myCarousel').carousel({
    interval: 1800
});
</script>
    </body>
</html>
