<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EduNext-Contact Us</title>
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
        <li><a href="index.jsp">Home</a></li>
         <li><a href="ad.jsp">Post An Ad</a></li>
        <li class="active"><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="container">
  <p>Every once in a while we have to make a decision about various aspect of our life.
 In order to move your life towards the right direction making a right education related decision can go long way tohelp you.
 But in today’s time education and other activity related information is quiet unorganised, continuously changing and not customized to suit our strength.
 There are many institutes, tutors and tutorials, coaching classes etc. which are constantly trying to improve upon themselves by bringing different courses to 
 adapt to the market requirements but due to unavailability of common forums there is a lack of exchange of this crucial information and schemes to students.
 In this age when major proportion of people opt for searching online or for posting ads with help of their smartphones or tabs and of courselaptops and
 PCs a common forum where this information could be stacked and maintain can immensely help people in there endeavours.<br>
 That’s what EduNext.com is all about.
 <br>
 <br>
 At EduNext.com we are trying to address this problem by bringing together teachers and students on a single platform.
 Our motto is to bridge the connection between people who seek information about academic related tuitions,
  coaching (be it school level or collegiate level) and various other activities like cooking, dancing, art,
  aerobics, yoga, vocational and skill trainings, computer programming, etc. with people who are willing and
  ready to provide it. 
  <br>
  <br>
  At EduNext.com both teachers and students can login and maintain their profiles and interact.
  Students may register themselves at our homepages as Student. Once they have registered they will be provided their own profiles
  which they can access again with the help of username or password. The information they require can be had from the search bar.
  Similarly Teachers, Institutes, Tutors etc. can register themselves as Teacher at our homepage.
  They may need to maintain some information on their profile so that student gets to know about them much better.
  This profile can be accessedby masses of students and they may contact the institute depending on their interests and likes.
  These institutes, tutorials etc. are sorted according to their popularity and performance in their area of expertise in different
  regions of the city.
  </div>
  </div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="container">
    
  <form  action="contact_us.jsp" method="post" id="contact_us" >
<table width="100%" border="3" cellpadding="0" align="center" cellspacing="1">
       
         <tr align="center" valign="middle" > 
		<td height="9" colspan="3" >Fill in the Details:</td>
		</tr>
		<tr>
         <td>First Name</td> <td><input type="text" name="fname" id="fname" value="" required="required" /><br></td>
         </tr>
         <tr>
         <td>Last Name</td> <td><input type="text" name="lname" id="lname" value="" required="required" /><br></td>
         </tr>
		<tr>
     	<td>Email id</td><td> <input type="text" name="email_id" id="email" value="" required="required"/><br></td>
     	</tr>
         <tr>
         <td>Mobile No.</td><td> <input type="text" name="number" id="number" value="" /><br></td>
         </tr>
         <tr>
          <td>Query</td><td> <TEXTAREA rows="4" cols="40" name="query" id="query" value="" wrap="hard" required="required"/></TEXTAREA></td>
          </tr>
          <tr>
          <td colspan="2" align="center"><input type="submit" name="submit" value="Submit" id="submit"   />
          <input type="reset" name="reset" id="reset" value="Reset" /></td>
          </tr>
</table>
 </form>


</div>
</div>
 
 <% 
   	String fname = request.getParameter("fname");
   String lname = request.getParameter("lname"); 
   String email = request.getParameter("email_id");    
    String number = request.getParameter("number");
    String query = request.getParameter("query");
   
      Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EduNext","root","admin");
    Statement st = con.createStatement();
 
   int i = st.executeUpdate("insert into contact_us (fname, lname, email_id, number , query ) values ('" + fname + "','" + lname + "','" + email + "','" + number + "','" + query +"')");

   
   con.close();
%> 





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


 
      