package com.RegistrationServlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;
import java.awt.HeadlessException;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;

/**
 * Servlet implementation class TeacherRegistration
 */
@WebServlet("/TeacherRegistration")
public class TeacherRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email_id = request.getParameter("email_id"); 
	    String pwd = request.getParameter("pwd");
	    String age = request.getParameter("age");
	    String gender = request.getParameter("gender");
	    String phone = request.getParameter("phone");
	     int key = 0;

	    
	    try{
	      Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection

("jdbc:mysql://localhost:3306/EduNext","root","admin");
	    Statement st = con.createStatement();
	 
	   int i = st.executeUpdate("insert into teacher_reg (email_id, pwd ,age , phone, gender ) values ('" + email_id + "','" 

+ pwd + "','" +age + "','" + phone + "','" + gender + "')");
	   
	   ResultSet rs;
	   
	   rs = st.executeQuery("select * from teacher_reg  where email_id='" + email_id + "'");
			   
	   while(rs.next())
	   {
		   key=Integer.parseInt(rs.getString(1));
		   
	   }
	   
	   
	    if(i>0)
	    {
	    	response.sendRedirect("index.jsp"+"?"+"Please check your email");
	    	sendMail("javamailsystem1@gmail.com",email_id,"Account activation link",
	    			"Please click on the following link to activate your account  --> http://localhost:8000/EduNext/teacher_profile.jsp?key=",key);
	    }
	    
	    else
	    {
	        response.sendRedirect("index.jsp"+"?"+"Registration failed");
	        

	    }
	}
	
	   catch(Exception e)
	   {
		   System.out.print(" "+e);
		   }
	   }	



public boolean sendMail(String from,String to,String subject,String messageAttribute,int temp_id)
{
	int id =temp_id;
    String host = "localhost";
    
    
    /*
    Properties props = new Properties();
    props.put("mail.smtp.host", getText("mail.smtp.host"));
    props.put("mail.smtp.socketFactory.port",getText

("mail.smtp.socketFactory.port"));
    props.put("mail.smtp.socketFactory.class",getText

("mail.smtp.socketFactory.class"));
    props.put("mail.smtp.auth", getText("mail.smtp.auth"));
    props.put("mail.smtp.port", getText("mail.smtp.port")); 
    */
    Properties props = new Properties();
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.socketFactory.port", "465");
    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "465");
    
    
    Session mySession = Session.getInstance(props, new Authenticator(){

    	protected PasswordAuthentication getPasswordAuthentication()
    	{
    		return new PasswordAuthentication("javamailsystem1@gmail.com","javamail");
	
    	}
    });

    try
    {
    	MimeMessage message = new MimeMessage(mySession);
    	message.setFrom(new InternetAddress(from));
    	message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
    	message.setSubject(subject);

    	message.setText(messageAttribute+id);
    	System.out.println("App Engine: Sending Mail to " + to);
    	Transport.send(message);
    	System.out.println("AppEngine: Message Sent");
    	return true;

    }catch( HeadlessException | MessagingException e)
    {
    	e.printStackTrace();
    	return false;
    }
    
}
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	


