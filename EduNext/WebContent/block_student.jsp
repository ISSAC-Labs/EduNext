<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String id=request.getParameter("id");


   Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EduNext","root","admin"); 
  Statement st = con.createStatement();

	int i = st.executeUpdate("update stud_reg set permission=0, status='Blocked' where permission=1 and stud_id='"+id+"'");
  
 if(i>0)
  {
	  response.sendRedirect("manage_students.jsp?student has been blocked");
  }
  
  
  %>
  
  
  
     
</body>
</html>