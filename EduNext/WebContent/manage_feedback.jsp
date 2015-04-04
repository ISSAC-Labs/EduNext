<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link href="styles/popup.css" type="text/css"  rel="stylesheet">
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.setup.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EduNext-Admin</title>
</head>
<body>
<div class="wrapper col0">
  <div id="topbar">
    <div id="loginpanel">
      <ul>
        <li class="left">Click Here &raquo;</li>
        <li class="right" ><a href="sign_out.jsp">Sign Out</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
    <h1>EduNext</h1>
      <h3>Welcome Admin</h3>
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="AdminHome.jsp">Home</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="container">
   <%
  //out.println(uloc);
  
   Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EduNext","root","admin");
 
  Statement st = con.createStatement();
  ResultSet rs;
  rs = st.executeQuery("select * from feedback");
  //out.println(rs.getString("cname"));
 /* if(rs.next())
  {
	  
	  out.println("The record is filled");
  }
  */
  
  %>   
     <center>
            <table border="2" width="100%">
                <caption><b>Feedback Details</b></caption>
                <br>
                <tr>
                	<th>S.No.</th>
     	            <th>Name</th>
                    <th>Email id</th>
                    <th>Comment</th>
                    <th><u>Edit</u></th>
                 </tr>
   
              <%
              while(rs.next())
              {            	  
              %>
           			
                    <tr>
                       <td><% out.println(rs.getString(1));%></td>
                       <td><% out.println(rs.getString(2));%></td>
                       <td><% out.println(rs.getString(3));%></td>
                       <td><% out.println(rs.getString(4));%></td>
                       <td><a href ="edit_feedback.jsp?userid=<%=rs.getString(1) %>">Remove</a></td>                
                    </tr>
          		</form>
          
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