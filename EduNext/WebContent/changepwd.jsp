<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
        
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/alertbox.js"></script>

</head>
<body>
<form action="changepwd.jsp" method="post" onsubmit="pwdchange();">
      Email_id <input type="text" name="email_id"   required ><br> 
      Previous Password: <input type="password" name="prevpwd"   required ><br>
      New Password: <input type="password" name="newpwd"  /><br>
      Re-Enter Password: <input type="password" name="repwd"  /><br>
      <input type="submit" name="pwdsubmit" id="pwdsubmit" value="submit" /><br>
   </form>
   <% 
String email_id=request.getParameter("email_id");
	String prevpwd = request.getParameter("prevpwd");
    String newpwd = request.getParameter("newpwd");
    String repwd = request.getParameter("repwd");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EduNext","root","admin");
    Statement st = con.createStatement();
    
    ResultSet rs;
    try{
    	  rs = st.executeQuery("select * from teacher_reg where email_id='"+ email_id + "' and pwd='" + prevpwd + "'");
    	    if (rs.next())
    	    {
    	       if(repwd.equals(newpwd)) 
    	       {
    	    	    
    	    	   int i = st.executeUpdate("update teacher_reg set pwd ='"+newpwd+"' where email_id='" + session.getAttribute("email_id") + "'");
    	    //	   out.print("Password changed Successfully!!"+"<a href='teacher_profile.jsp'>proceed to profile</a>");
    	    	   //response.sendRedirect("pro.jsp");
    	       }
    	    }
    //	    else 
    	//    {
    	  //      out.println("Invalid password <a href='index.jsp'>try again</a>");
    	    //}
    	}
    	    finally
    		  {
      			}
    
   %>   
   
   
   
   
   
   
   
   
</body>
</html>