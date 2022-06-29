<%@page import="conn.DB"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>

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
                                
             <form action="backend.jsp">                       
		<center>
		<%!double totalcost;%>
		<table width="70%">
		<% Connection con=DB.getconn(); 
		
		Statement st=con.createStatement();
		
		ResultSet rs=st.executeQuery("select space.cost,parkingdealites.starttime from parkingdealites,space where parkingdealites.space_id=space.space_id and parkingdealites.id='"+request.getParameter("id")+"'");
		session.setAttribute("id", request.getParameter("id"));
		if(rs.next()){	
			
				out.print(rs.getString(1)+""+rs.getString(2));
				String strDate;
				Date date = new Date();  
				 SimpleDateFormat  formatter = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss");  
				    strDate = formatter.format(date);
				    
				String dateStart = rs.getString(2);
				String dateStop =strDate;

				//HH converts hour in 24 hours format (0-23), day calculation
				SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

				Date d1 = null;
				Date d2 = null;

				try {
					d1 = format.parse(dateStart);
					d2 = format.parse(dateStop);

					//in milliseconds
					long diff = d2.getTime() - d1.getTime();

					long diffSeconds = diff / 1000 % 60;
					long diffMinutes = diff / (60 * 1000) % 60;
					long diffHours = diff / (60 * 60 * 1000) % 24;
					long diffDays = diff / (24 * 60 * 60 * 1000);
					
					
					if(diffHours<0){
						diffHours=12+diffHours;
						diffMinutes=60+diffMinutes;
						diffSeconds=60+diffSeconds;
					}
						
					 totalcost=diffDays*12*rs.getInt(1)+diffHours*rs.getInt(1);

					
					

				} catch (Exception e) {
					e.printStackTrace();
				}
		}
		
		
		%>
		<tr><th>space id </th><th><input type="text" readonly  value=<%=request.getParameter("id") %> name="sp">  </th></tr>
		<tr><th>total</th><th><input type="text" readonly  value=<%=totalcost%> name="tt">  </th></tr>
		<tr><th>card number</th><th><input type="number" name="cd" ></th>
		<tr><th>pin</th><th><input type="password" name="pin" ></th>
		<tr><th></th><th><input type="submit" name="table" value="payment"></th>
		</table>
		</form>
		
	
						
				</center>		
						
                                </div>
                              </li>
                            </ul>
                              
                            </div> 
                    
                </div>
            </div>
                    
                    <div class="container">
                     
                   
                  </div>
                    

                   <!--  <div class="site-footer">
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
