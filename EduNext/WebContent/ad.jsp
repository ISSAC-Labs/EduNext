<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EduNext-Post An Ad</title>
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/alertbox.js"></script>

</head>
<body>
<%

String cname = request.getParameter("cname");    
String location = request.getParameter("location");
String cperson = request.getParameter("cperson");
String phone = request.getParameter("phone");
String duration = request.getParameter("cduration");
String cfees = request.getParameter("cfees");

  Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EduNext","root","admin");
Statement st = con.createStatement();

int i = st.executeUpdate("insert into DB (cname, location ,cperson , phone, duration ,cfees) values ('" + cname + "','" + location + "','" +cperson + "','" + phone + "','" + duration + "','" + cfees + "')");

%>

<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="index.jsp">EduNext</a></h1>
      <p>Your True Education Partner</p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="index.jsp">Home</a></li>
         <li class="active"><a href="ad.jsp">Post An Ad</a></li>
        <li ><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="container">
  
  <br><br><br><br><br><br>
  <table width="100%" cellpadding="0" align="center" cellspacing="1">
         
         <tr align="center" valign="middle" > 
		<td height="9" colspan="3" size="10">Kindly enter the neccessary details to post your Ad:</td>
			</tr>
		<form action="ad.jsp" method="post" onsubmit="advert();">
		<tr>
         <td align="right">Course Name</td> <td align="left"><input type="text" name="cname" id="cname" value="" required="required" /><br></td>
         </tr>
         <td align="right">Location</td> <td align="left"><input type="text" name="location" id="location" value="" required="required" /><br></td>
         </tr>
		<tr>
     	<td align="right">Contact Person</td><td align="left"> <input type="text" name="cperson" id="cperson" value="" required="required"/><br></td>
     	</tr>
         <tr>
         <td align="right">Mobile No.</td><td align="left"> <input type="text" name="phone" id="phone" value="" required="required"/><br></td>
         </tr>
         <tr>
          <td align="right">Duration</td><td align="left"> <input type="text" name="cduration" id="cduration" value="" required="required"/></td>
          </tr>
         
         <tr>
          <td align="right">Fees</td><td align="left"> <input type="text" name="cfees" id="cfees" value="" required="required"/></td>
          </tr>
          <tr>
          <td colspan="2" align="center"><input type="submit" name="ad" id="ad" value="Submit" />
          <input type="reset" name="reset" id="reset" value="Reset" /></td>
          </tr>
          </form>
</table>
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