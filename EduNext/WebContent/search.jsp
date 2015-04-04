<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EduNext- Search Result</title>
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
<body>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="index.jsp">EduNext</a></h1>
      <p>Your True Education Partner</p>
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="index.jsp">Home</a></li>
         <li ><a href="ad.jsp">Post An Ad</a></li>
        <li ><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="container">
    <%
  String uloc = request.getParameter("location");    
  String ucourse = request.getParameter("cname");

  //out.println(uloc);
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EduNext","root","admin");
 
  Statement st = con.createStatement();
  ResultSet rs;
  rs = st.executeQuery("select * from DB where location='" + uloc + "' AND cname='" + ucourse + "'");
  //out.println(rs.getString("cname"));
 /* if(rs.next())
  {
	  
	  out.println("The record is filled");
  }
  */
  %>   
     <center>
            <table  width="100%">
                <caption><b>Search Results</b></caption>
                <br>
                <br>
                <tr>
                   
                    <th>Course</th>
                   <th>Location</th>
                    <th>Contact Person</th>
                    <th>Phone</th>
                    <th>Duration</th>
                    <th>Content</th>
                    <th>Fees</th>
                    <th>Admission</th>
                    
                    
                </tr>
   
              <%
              while(rs.next())
              {            	  
              %>
            
                    <tr>
                       <td align="center"><% out.println(rs.getString(1));%></td>
                       <td align="center"><% out.println(rs.getString(3));%></td>
                       <td align="center"><% out.println(rs.getString(2));%></td>
                       <td align="center"><% out.println(rs.getString(4));%></td>
                       <td align="center"><% out.println(rs.getString(5));%></td>                                     
                       <td align="center"><a href="">View</a></td>
                       <td align="center"><% out.println(rs.getString(6));%></td>       
                       <td align="center"><a href="">Join Now</a></td>       
                        
                    </tr>
          		
          
               <%     
               }
              %>
                
            </table>
       
    </center>
    
    </div>
  </div>
      <!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="copyright">
 
  </div>
</div>

<!-- ####################################################################################################### -->

 <div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - EduNext</p>
    <p class="fl_right">Powered by <a href="http://www.issac.meximas.com/" >Issac Meximas</a></p>
    <br class="clear" />
  </div>
</div>
          
</body>
</html>