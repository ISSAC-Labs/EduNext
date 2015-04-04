package com.servlet.fileupload;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class FileLocationContextListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent servletContextEvent) {
    	String rootPath = System.getProperty("catalina.home");
    	ServletContext ctx = servletContextEvent.getServletContext();
    	String relativePath = ctx.getInitParameter("D:\tempfile.dir");
    	File file = new File(rootPath + File.separator + relativePath);
    	if(!file.exists())
    		file.mkdirs();
    	System.out.println("File Directory created to be used for storing files");
    	ctx.setAttribute("FILES_DIR_FILE", file);
    	ctx.setAttribute("FILES_DIR", rootPath + File.separator + relativePath);
    }

	public void contextDestroyed(ServletContextEvent servletContextEvent) {
		//do cleanup if needed
	}
	
}

/*

Servlet Upload File and Download File Example

Use Case

Our use case is to provide a simple HTML page where client can select a local file to be uploaded to server.
 On submission of request to upload the file, our servlet program will upload the file into a directory
  in the server and then provide the URL through which user can download the file. For security reason,
   user will not be provided direct URL for downloading the file, rather they will be given a link
    to download the file and our servlet will process the request and send the file to user.

We will create a dynamic web project in Eclipse 



Let’s look into all the components of our web application and understand the implementation.

HTML Page for Uploading File

We can upload a file to server by sending a post request to servlet and submitting the form.
 We can’t use GET method for uploading file.

Another point to note is that enctype of form should be multipart/form-data.

To select a file from user file system, we need to use input element with type as file.

So we can have a simple HTML page for uploading file as:



Server File Location

We need to store file into some directory at server, we can have this directory hardcoded in program
 but for better flexibility, we will keep it configurable in deployment descriptor context params.
  Also we will add our upload file html page to the welcome file list.




ServletContextListener implementation

Since we need to read context parameter for file location and create a File object from it,
 we can write a ServletContextListener to do it when context is initialized.
  We can set absolute directory location and File object as context attribute to be used by other servlets.

Our ServletContextListener implementation code is like below.



File Upload Download Servlet Implementation

Update: Servlet Specs 3 added support to upload files on server in the API, so we won’t need to use any third party API.
 Please check out Servlet 3 Upload File.

For File upload, we will use Apache Commons FileUpload utility, for our project we are using version 1.3,
 FileUpload depends on Apache Commons IO jar, so we need to place both in the lib directory of the project,
  as you can see that in above image for project structure.

We will use DiskFileItemFactory factory that provides a method to parse the HttpServletRequest object and return
 list of FileItem.  FileItem provides useful method to get the file name, field name in form, size and
  content type details of the file that needs to be uploaded. 

To write file to a directory, all we need to do it create a File object and pass it as argument to
 FileItem write() method.

Since the whole purpose of the servlet is to upload file, we will override init() method to initialize
 the DiskFileItemFactory object instance of the servlet. We will use this object in the doPost() method
  implementation to upload file to server directory.

Once the file gets uploaded successfully, we will send response to client with URL to download the file, 
since HTML links use GET method,we will append the parameter for file name in the URL and we can utilize
 the same servlet doGet() method to implement file download process.





For implementing download file servlet, first we will open the InputStream for the file and
 use ServletContext.getMimeType() method to get the MIME type of the file and set it as response content type.

We will also need to set the response content length as length of the file.
 To make sure that client understand that we are sending file in response, we need to set “Content-Disposition” header
  with value as “attachment; filename=”fileName“.

Once we are done with setting response configuration, we can read file content from InputStream
 and write it to ServletOutputStream and the flush the output to client.



*/