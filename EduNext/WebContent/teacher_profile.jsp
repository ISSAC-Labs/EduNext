
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>

<html>
<head profile="http://gmpg.org/xfn/11">
<title>EduNext</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link href="styles/popup.css" type="text/css"  rel="stylesheet">
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.setup.js"></script>

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
    <%
    String id=request.getParameter("key");
      int t_id= Integer.parseInt(id);    
    int perm=0;
    String email="";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/EduNext","root","admin"); 
    Statement st = con.createStatement();
    
	ResultSet rs1 = st.executeQuery("select * from teacher_reg where teacher_id='"+id+"'");

	while (rs1.next())
	{
		perm=rs1.getInt(7);
	}
    
	
	if(perm==0 )
    {	
    		   response.sendRedirect("index.jsp?Your account is restricted");
    }	
	
	else if(perm==1)
    {
 	   out.print("<h3>Welcome</h3>"+" "+email+session.getAttribute("email_id"));
    	
    }
	else if(perm==2)
    {
    	int i = st.executeUpdate("update teacher_reg set permission=1 , status='Activated' where permission=2");

    	   ResultSet rs = st.executeQuery("select * from teacher_reg where teacher_id='"+id+"'");
    	     
    	   while(rs.next())
    	    {
    	  	email=rs.getString(2);
    	    }
    	   out.print("<h3>Welcome</h3>"+" "+email+session.getAttribute("email_id"));
    }
	
    else 
    {
    	
    }
    
    	
    	
   
    
   /* 
   {
	
	int i = st.executeUpdate("update teacher_reg set permission=1 where permission=0");

   ResultSet rs = st.executeQuery("select * from teacher_reg where teacher_id='"+id+"'");
     
   while(rs.next())
    {
  	email=rs.getString(2);
    }
   out.print("<h3>Welcome</h3>"+" "+email+session.getAttribute("email_id"));
   }
   */
    %>
      
    </div>
    <div id="topnav">
       <ul>
        <li class="active"><a href="teacher_profile.jsp">Home</a></li>
         <li><a href="feedback.jsp">Feedback</a></li>
        <li><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
       
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="container">
    <div id="content">
      <h1>&lt;h1&gt; to &lt;h6&gt; - Headline Colour and Size Are All The Same</h1>
      <img class="imgl" src="images/demo/imgl.gif" alt="" width="125" height="125" />
      <p>This is a W3C compliant free website template from <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a>. This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>.</p>
      <p>You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files. For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>.</p>
      <p>Portortornec condimenterdum eget consectetuer condis consequam pretium pellus sed mauris enim. Puruselit mauris nulla hendimentesque elit semper nam a sapien urna sempus.</p>
      <h2>Table(s)</h2>
      <table summary="Summary Here" cellpadding="0" cellspacing="0">
        <thead>
          <tr>
            <th>Header 1</th>
            <th>Header 2</th>
            <th>Header 3</th>
            <th>Header 4</th>
          </tr>
        </thead>
        <tbody>
          <tr class="light">
            <td>Value 1</td>
            <td>Value 2</td>
            <td>Value 3</td>
            <td>Value 4</td>
          </tr>
          <tr class="dark">
            <td>Value 5</td>
            <td>Value 6</td>
            <td>Value 7</td>
            <td>Value 8</td>
          </tr>
          <tr class="light">
            <td>Value 9</td>
            <td>Value 10</td>
            <td>Value 11</td>
            <td>Value 12</td>
          </tr>
          <tr class="dark">
            <td>Value 13</td>
            <td>Value 14</td>
            <td>Value 15</td>
            <td>Value 16</td>
          </tr>
        </tbody>
      </table>
      <div id="comments">
        <h2>Comments</h2>
        <ul class="commentlist">
          <li class="comment_odd">
            <div class="author"><img class="avatar" src="images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
          <li class="comment_even">
            <div class="author"><img class="avatar" src="images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
          <li class="comment_odd">
            <div class="author"><img class="avatar" src="images/demo/avatar.gif" width="32" height="32" alt="" /><span class="name"><a href="#">A Name</a></span> <span class="wrote">wrote:</span></div>
            <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
            <p>This is an example of a comment made on a post. You can either edit the comment, delete the comment or reply to the comment. Use this as a place to respond to the post or to share what you are thinking.</p>
          </li>
        </ul>
      </div>
      <h2>Write A Comment</h2>
      <div id="respond">
        <form action="#" method="post">
          <p>
            <input type="text" name="name" id="name" value="" size="22" />
            <label for="name"><small>Name (required)</small></label>
          </p>
          <p>
            <input type="text" name="email" id="email" value="" size="22" />
            <label for="email"><small>Mail (required)</small></label>
          </p>
          <p>
            <textarea name="comment" id="comment" cols="100%" rows="10"></textarea>
            <label for="comment" style="display:none;"><small>Comment (required)</small></label>
          </p>
          <p>
            <input name="submit" type="submit" id="submit" value="Submit Form" />
            &nbsp;
            <input name="reset" type="reset" id="reset" tabindex="5" value="Reset Form" />
          </p>
        </form>
      </div>
    </div>
    <div id="column">
      <div class="subnav">
        <h2>Account Settings</h2>
         <ul>
          <li><a href="modteacherprof.jsp">Modify Profile</a></li>
          <li><a href="changepwd.jsp">Change password</a></li>
          <li><a href="#">View Students</a></li>
           <li><a href="ad.jsp">Post An Ad</a></li>
           </ul>
           <br>
           <br>
           <h2>Content Setting</h2>
           <ul>
           <li><a href="#">View Content</a></li>
          <li><a href="content.jsp">Provide Content</a></li>
          <li><a href="#">Remove Content</a></li>
          </ul>
          <br>
          <br>
          <h2>Test</h2>
          <ul>
          <li><a href="#">Conduct Test</a></li>
          <li><a href="#">View Result</a>
          </ul>    
        
      </div>
      <div class="holder">
        <h2>Courses offered:</h2>
        <p>Click on Link to view content:</p>
        <ul>
          <li>Academic Coaching</li>
          <li>Cooking</li>
          <li>Dance and Aerobics</li>
          <li>Textile Designing</li>
          <li>Advance Computer Training</li>
        </ul>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - EduNext</p>
    <br class="clear" />
  </div>
</div>
</body>
</html>