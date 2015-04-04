<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="scripts/alertbox.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
    String email_id = request.getParameter("email_id");    
    String pwd = request.getParameter("pwd");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String phone = request.getParameter("phone");
   
      Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EduNext","root","admin");
    Statement st = con.createStatement();
 
   int i = st.executeUpdate("insert into teacher_reg (email_id, pwd ,age , phone, gender ) values ('" + email_id + "','" + pwd + "','" +age + "','" + phone + "','" + gender + "')");
   
    if(i>0)
    {
    
    	response.sendRedirect("index.jsp");
    }
    
    else
    {
        response.sendRedirect("index.jsp?Registration Failed");
       

    }
%>

</body>
</html>