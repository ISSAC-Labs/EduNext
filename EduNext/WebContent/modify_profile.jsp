<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edunext- Modify Profile</title>
</head>
<body>

<!--  
<form method="post" action="FileUploadServlet" enctype="multipart/form-data">
Change name:<input type="text" name="new_name"><br>
Change address:<input type="text" name="new_add"><br>
Change contact no.<input type="text" name="new_no."><br>
Change profile picture<input type="file" name="prof_pic"  accept='.jpg,.jpeg'>
<input type ="submit" value="ok">
</form>

--><center>
        <h1>File Upload to Database Demo</h1>
        <form method="post" action="FileUploadServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>email id </td>
                    <td><input type="text" name="emailid" size="50"/></td>
                </tr>
                <tr>
                    <td>Portrait Photo: </td>
                    <td><input type="file" name="filename" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Upload">
                    </td>
                </tr>
            </table>
        </form>
    </center>







</body>
</html>