<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
         <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edunext- Submit Feedback</title>
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/alertbox.js"></script>

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
        <li><a href="teacher_profile.jsp?key=1">Home</a></li>
         <li class="active"><a href="feedback.jsp">Feedback</a></li>
        <li ><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
 <div class="wrapper col6">
  <div id="container">
  <font size="3"><b>Write A Comment</b></font>
      <div id="respond">
        <form action="feedback.jsp" method="post" onsubmit="feedback();">
          <p>
            <input type="text" name="name" id="name" value="" size="22" required>
            <label for="name"><small>Name (required)</small></label>
          </p>
          <p>
            <input type="text" name="email" id="email" value="" size="22" required>
            <label for="email"><small>Mail (required)</small></label>
          </p>
          <p>
            <textarea name="comment" id="comment" cols="100%" rows="10"></textarea>
            <label for="comment" style="display:none;"><small>Comment (required)</small></label>
          </p>
          <p>
            <input name="submit" type="submit" id="submit" value="Submit Form" onclick = "validation()" />
            &nbsp;
            <input name="reset" type="reset" id="reset" tabindex="5" value="Reset Form" />
          </p>
        </form>
        <%
         	
        		String name = request.getParameter("name");    
        	    String email = request.getParameter("email");
        	    String comment = request.getParameter("comment");
        	    
        	      Class.forName("com.mysql.jdbc.Driver");
        	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eduNext","root","admin");
        	    Statement st = con.createStatement();
        	 
          	   int i = st.executeUpdate("insert into feedback (name, email ,comment ) values ('" + name + "','" +email + "','" +comment + "')");
        	 
     
   %>
   </div>
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