<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>EduNext-Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link rel="stylesheet" href="styles/popup.css" type="text/css" >
<script type="text/javascript" src="scripts/alertbox.js"></script>
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.slidepanel.setup.js"></script>
<script type="text/javascript" src="scripts/slidetoggle.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.setup.js"></script>


</head>
<body>

<div class="wrapper col0">
  <div id="topbar">
    <div id="slidepanel">
      <div class="topbox">
         
         
           <form>
         <h2>Registration</h2>
          <fieldset>
            <legend>Registration</legend>
            <p>
            Havent't singned up yet?<br>
            This website facilitates the user to sign up as student looking for a course or as a teacher or a teaching organization trying to reach students.
             </p>
             <center><font size=2><B><a href="javascript:void(0)" onclick="toggle_visibility('popup_teacher')">TEACHER REGISTRATION</a></center></font></B>
            <br>
                <center><font size=2><b><a href="javascript:void(0)" onclick="toggle_visibility('popup_stud')">STUDENT REGISTRATION</a></center></font></b>
          </fieldset>
           </form>
         
         
         
         
         
      <div id=popup_teacher class=popup-overlay>
        <div id=popup-box_frame>
        <div id=popup-box>
            
 <p align="right"><a href="javascript:void(0)" onclick="toggle_visibility('popup_teacher')">Close [X]</a></p> 
 <h4>Teacher's Registration Form</h4>
		 <form action=TeacherRegistration method=post onsubmit="confirmation();" >
         <table>
         <tr>
          <td><font color="white">Email_id</td></font><td> <input type="text" name="email_id" id="teacherid" value="" required="required" /></td>
          </tr> 
          <tr>
          <td><font color="white" >Password:</td></font><td> <input type="password" name="pwd" id="teacherpass" value=""required="required" /></td>
          </tr>
          <tr>
           <td><font color="white">Gender:</td></font><td><input type="text" name="gender" id="teachergender" value="" /></td>
          </tr>
          <tr>
          <td><font color="white">Age</td></font><td> <input type="text" name="age" id="teacherage" value="" /></td>
          </tr>
          <tr>
          <td><font color="white"> Phone:</td></font> <td><input type="text" name="phone" id="teacherphn" value="" required="required" /></td>
           </tr>
            <tr>
          <td rowspan=2><input type="submit" name="t_reg" id="teacher_reg" value="Register"  /></td>
           <td> <input type="reset" name="t_reset" id="teacher_reset" value="Reset" /></td>
         </tr>
          </table>
          </form> 
          <br>
                           
        </div><!-- popup-box -->
          </div><!-- popup-box_frame -->
          </div><!-- popup overlay -->
        
        
           
      <div id=popup_stud class=popup-overlay>
        <div id=popup-box_frame>
        <div id=popup-box>
            
 <p align="right"><a href="javascript:void(0)" onclick="toggle_visibility('popup_stud')">Close [X]</a></p> 
 		<h4>Student's Registration Form</h4>
	 	<form action="reg_stud.jsp" method="post" onsubmit="confirmation();">
	 	<table>
	 	<tr>
           <td><font color="white">Email_id</font></td> <td><input type="text" name="email_id" id="studid" value="" required="required"/></td>
           </tr>
           <tr>
           <td><font color="white">Password:</font></td> <td><input type="password" name="pwd" id="studpass" value="" required="required" /></td>
           </tr>
            <tr>
           <td><font color="white">Gender:</font></td> <td><input type="text" name="gender" id="studgender" value="" /></td>
          </tr>
           <tr>
           <td><font color="white">Age</font></td> <td><input type="text" name="age" id="studage" value="" /></td>
           </tr>
           <tr>
           <td><font color="white">Phone: </font></td><td><input type="text" name="phone" id="studphn" value="" required="required" /></td>
           </tr>
           <tr>
          <td><input type="submit" name="s_login" id="studlogin" value="Register" /></td>
           <td><input type="reset" name="s_reset" id="studreset" value="Reset" /></td>
           </tr>
        </table>
          </form> 
        
          <br>
        
            
  
        </div><!-- popup-box -->
          </div><!-- popup-box_frame -->
          </div><!-- popup overlay -->
         </div>
         
             
         
         
      <div class="topbox">
        <h2>Teachers Login Here</h2>
        <form action="login_teacher.jsp" method="post">
          <fieldset>
            <legend>Teachers Login Form</legend>
            <label for="teachername">Username:
              <input type="text" name="teachername" id="teachername" value="" />
            </label>
            <label for="teacherpass">Password:
              <input type="password" name="teacherpass" id="teacherpass" value="" />
            </label>
             <p>
              <input type="submit"  name="teacherlogin" id="teacherlogin" value="Login" />
              &nbsp;
              <input type="reset" name="teacherreset" id="teacherreset" value="Reset" />
            </p>
          </fieldset>
        </form>
      </div>
      
      
      
      <div class="topbox last">
        <h2>Students Login Here</h2>
        <form action="login_student.jsp" method="post">
          <fieldset>
            <legend>Student Login Form</legend>
            <label for="studname">Username:
              <input type="text" name="studname" id="studname" value="" />
            </label>
            <label for="studpass">Password:
              <input type="password" name="studpass" id="studpass" value="" />
            </label>
            <p>
              <input type="submit" name="studlogin" id="studlogin" value="Login" />
              &nbsp;
              <input type="reset" name="studreset" id="studreset" value="Reset" />
            </p>
          </fieldset>
        </form>
      </div>
      <br class="clear" />
    </div>
    <div id="loginpanel">
      <ul>
        <li class="left">Log In Here &raquo;</li>
        <li class="right" id="toggle"><a id="slideit" href="#slidepanel">Click Here</a><a id="closeit" style="display: none;" href="#slidepanel">Close Panel</a></li>
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
      <p>Your True Education Partner</p>
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="ad.jsp">Post An Ad</a></li>
        <li><a href="contact_us.jsp">Contact Us</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div class="featured_box"><a href="#"><img src="images/demo/banner1.gif" alt="" /></a>
      <div class="floater">
        <h2>Acadmic Coaching Classes</h2>
        <p>Orcimagna rhoncus et a nec antesque sed temportor pellus nibh conseque. Accumstsemper wisi pretium feugiat non ut eleifendrerisque at et condisse sce. Iaculumorci congue nam mollis odio id cras orci vestique euisquet at. Donecconsectetus lacilis ac pellus nam nibh curabitur sed anterdum nectetus adipis. Pretiummagnisse antes nunc pretium convallis tincidunt non at rutrumt.</p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/demo/banner2.gif" alt="" /></a>
      <div class="floater">
        <h2>Cooking Classes</h2>
        <p>Duisvest lacus pellus purus temper maurisus et sodalesuada loreet sapiente et. Quissociis magnisl orci dui nulla ut antesque malesuada sed pede et. Idlacus ridiculisi nec cursus enim ac tur urnar nunc pellus pellenterdum. Necelisi aliquat curabiturpiscing semportortor sed et velit convallis quat adipiscing cursus. Rutrumeget id ipsum et sed maurisuspendimentum auctor siti.</p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/demo/banner3.gif" alt="" /></a>
      <div class="floater">
        <h2>Dance and Aerobics</h2>
        <p>Pharetiumurna habitur et enim pellentesque phasellus aliquam nunc quis justo nam. Lobortororci dapibulum ac intesquet ut id sed intesque nec alique congue. Liberoaenec vest maurisus libero pede nisl ligula cursus vitae dis metus. Aeneanaccumsan orci nasce ac pulvinare enim tor quis antesque cumsan in. Justomontesque sem ac dolor iaculum dolor orci elit lacus et vestibulum.</p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/demo/banner4.gif" alt="" /></a>
      <div class="floater">
        <h2>Textile Designing</h2>
        <p>Pharetiumurna habitur et enim pellentesque phasellus aliquam nunc quis justo nam. Lobortororci dapibulum ac intesquet ut id sed intesque nec alique congue. Liberoaenec vest maurisus libero pede nisl ligula cursus vitae dis metus. Aeneanaccumsan orci nasce ac pulvinare enim tor quis antesque cumsan in. Justomontesque sem ac dolor iaculum dolor orci elit lacus et vestibulum.</p>
      </div>
    </div>
    <div class="featured_box"><a href="#"><img src="images/demo/banner5.gif" alt="" /></a>
      <div class="floater">
        <h2>Advance Computer Training</h2>
        <p>Nullamcorpervivamus nisl in sed adipit donec feugiat lor vel velit volutpat. Wisihabitur diculisi ac curabitur cursuspendreris sociis sed eger ipsum condisse laculis. Curabiturid non eu curabitae nibh por nullamcorper at nibh elis fring. Vestnibh congue praesenenatis justo et maecenasceleifend senterdum malesuada at dolor amet. Turisristibulum curabitae eros leo at interd.</p>
       </div>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="homecontent">
    <div class="fl_left">
      <div class="column2">
        <h2>What is EduNext</h2>
        <p>EduNext.com is an online education portal that provides a platform for students who want to enroll for Co-Curriculum,
         Household activities and coaching class for acadamic subjects.
   		Complete with elaborate multimedia tutorials, interactive exercises, practice tests and expert help,
   		 we endeavour to make studies easy for students and help them score more. We also provide online sessions, 
   	 subject-wise and chapter-wise revision notes for thorough understanding of concepts right from a basic to an advanced level of difficulty.
    	 Our products are carefully designed to ensure maximum learning through proven techniques such as conceptual videos,
       adaptive learning and collaborative learning methods. </p>
      </div>
    </div>
    <div class="fl_right">
     <form action="search.jsp" method="post">
      <h2>Search</h2>
      Location:<input type="text" name="location" id="uloc" value="" required>
      <br>
      Course:<input type="text" name="cname" id="ucourse" value="" required>
      <input type="submit" value="Search">
      </form>
      <br>
    </div>
    <br class="clear" />
  </div>
</div>

<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - Edunext-<a href="AdminPage.jsp">Admin</a></p>
    <p class="fl_right">Powered by <a href="http://www.issac.meximas.com/" >Issac Meximas</a></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>
