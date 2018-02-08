<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="java">

<head>
	<link href="login.css" type="text/css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative|Open+Sans:400,600i"
		  rel="stylesheet">
	<title>..::Welcome to Medipo::..</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<h1 class="header">Medipo</h1>

<div class="topnav">
	<a href="welcome.jsp">Home</a>
	<a href="guestupload.jsp">Upload</a>
	<a href="login.jsp">Login</a>
	<a href="about.jsp">About</a>
	<a href="contact.jsp">Contact</a>
	<b>Welcome, Guest</b>
</div>

<div class="row">
	<div class="centerclmn">

		<h2>Upload here</h2><br><br>
		<form name ="uploadForm" action="Upload" method="POST" enumtype = "multipart/form-data">

			<input type = "file" name = "file" value = "" width = 100 >
			<input type = "submit" value = "Submit" name = "submit" >
			${isSubmitted}

		</form>
		<br><form action = "Logout">
		<input type = "submit" value = "Logout">
	</form>

	</div>
	<div class="rightclmn">
		<h2 align="center">Server ver.1</h2>
		<h4 class="updatec">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet ex ante. In at rhoncus ex. Nunc eu magna at turpis dapibus molestie. Sed ut mattis augue.</h4>

		<h2 align="center">Update 1.2</h2>
		<h4 class="updatec">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet ex ante. In at rhoncus ex. Nunc eu magna at turpis dapibus molestie. Sed ut mattis augue.</h4>

		<h2 align="center" >Maintenance on 21.12.22</h2><br>
		<h4 class="updatec">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet ex ante. In at rhoncus ex. Nunc eu magna at turpis dapibus molestie. Sed ut mattis augue.</h4>

	</div>
	<img src="pulse1.png" width="80%"  alt="backg" >
</div>
</body>
</html>


<!--
<%@page import="java.io.DataInputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medipo - Upload</title>
</head>
<body>

	<%
		if(session.getAttribute("username")== null){	//user not registered (guest)
			response.sendRedirect("login.jsp");
		}
	%>
	
	Welcome ${username} <br>
	
	<img alt="" src="https://d30y9cdsu7xlg0.cloudfront.net/png/1061782-200.png"><br><br>
	
	Upload here <br>
	<form name = "uploadForm" action="Upload" method="POST" enumtype = "multipart/form-data">
		
		<input type = "file" name = "file" value = "" width = 100 >
		<input type = "submit" value = "Submit" name = "submit" >
		${isSubmitted}
	
	</form>
			<br><form action = "Logout">
			<input type = "submit" value = "Logout">
			</form>
</body>
</html>
-->