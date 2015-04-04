<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EduNext-Provide Content</title>
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/alertbox.js"></script>

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
      <h1><a href="index.jsp">EduNext</a></h1>
      <p>Your True Education Partner</p>
    </div>
    <div id="topnav">
      <ul>
        <li><a href="teacher_profile.jsp?key=1">Home</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="container">
  
  <br><br><br><br><br><br>
  <table  cellpadding="0" align="center" cellspacing="1" >
         
         <tr align="center" valign="middle" > 
		<td height="9" colspan="3" size="10">Kindly enter the neccessary details</td>
			</tr>
		<form action="UploadContent" method="post" enctype="multipart/form-data">
	<!-- <tr>
	<td  width="50%" align="right">Course name</td> <td align="left"><input type="text" name="cname" id="cname" value="" required="required" /><br></td>
	</tr> -->
         <tr>
         <td  width="50%" align="right">Select Content</td> <td align="left"><input type="file" name="fileName" id="file" value="" required="required" /><br></td>
         </tr>
         <tr>
         <td align="center" colspan="2" align="center"><input type="submit" width="10px" value="Submit" />
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