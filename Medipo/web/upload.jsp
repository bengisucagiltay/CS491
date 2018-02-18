<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="java">

<head>
	<link href="css/login.css" type="text/css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative|Open+Sans:400,600i"
		  rel="stylesheet">
	<title>..::Welcome to Medipo::..</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<h1 class="header">Medipo</h1>

<div class="topnav">
	<a href="welcome.jsp">Home</a>
	<a href="upload.jsp">Upload</a>
	<a href="login.jsp">Login</a>
	<a href="about.jsp">About</a>
	<a href="contact.jsp">Contact</a>

	<b>Welcome,
		<%
			if(session.getAttribute("fname")== null){	//user not registered (guest)
				out.println(" Guest");
			}
			else
				out.println(session.getAttribute("fname")); //to do: logout based on guest or registered
		%>
	</b>

	<a style="float: right" href="/Logout" ><u>Logout</u></a>
</div>

<div class="row">
	<div class="container">

		<form action="Upload" method="post" enctype="multipart/form-data" name="form1" id="form1">
			<br>
			<h4 align="center" ><b>Upload your files:</b><br><br>
			<input name="file" type="file" id="file" multiple></h4>
			<input type="submit" name="Submit" value="Submit files"/>
		</form>
	</div>
</div>
<img src="images/pulse1.png" width="100%" alt="backg" >
</body>
</html>


