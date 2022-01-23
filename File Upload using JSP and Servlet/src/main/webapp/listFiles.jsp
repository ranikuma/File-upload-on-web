<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="org.studyeasy.hibernate.entity.Files"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listing Images</title>
</head>
<body>
<h1> Listing Images </h1>
<%! String form; int fileId; %>


<table border="1">
<tr>
<th>Preview</th>
<th>Available information</th>
<th>Update information</th>
<th>action</th>

<%

   String path = (String)request.getAttribute("path");
   List<Files> files = (List<Files>)request.getAttribute("files") ;
   for(Files file: files){
	   out.print("<tr><td><img src="+path+file.getFileName()+" height='200'>"+"</td>");	
	   out.print("<td><ul>"+
	   "<li>File ID: " + file.getId()+"</li>"+
	   "<li>File Name: " + file.getFileName()+"</li>"+
	   "<li>File Lable: " + file.getLabel()+"</li>"+
	   "<li>File Caption: " + file.getCaption()+"</li>"+
		"</ul></td>"
		);
	   fileId = file.getId();
	   form = "<form action='FilesHandler' method='post'>"+
				"Label: <input type='text' name='label' /><br/><br/>"+
				"Caption: <input type='text' name='caption' /><br/><br/>"+
				"<input type='hidden' name='fileId' value='"+fileId+"' />"+
				"<input type='hidden' name='action' value='updateInformation' />"+
				"<input type='submit' value='Update'/>"+
				"</form>";
		out.print("<td>"+form+"</td>");
		out.print("<td><ul><li><a href='"+request.getContextPath()+"/FilesHandler?action=viewImage&fileId="+
			 file.getId()+"'>View Image</a></li>");
		
		out.print("<li><a href='"+request.getContextPath()+"/FilesHandler?action=deleteImage&fileId="+
				 file.getId()+"' onclick=\"if(!confirm('Are you sure you want to delete the user?'))return false\">Delete</a></li></ul></td></tr>");
   }
	
%>
</tr>
</table>
</body>
</html>