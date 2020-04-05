<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>nievau.jsp</title>
</head>
<body>
<% if( ){ %> 
<p>Vous etes un débutant</p>
<% } else if(  ){ %>
<p>Vous avez un niveau moyenne</p>
<%}else{ %>
<p>Vous etes un expert!</p>
<%} %>




</body>
</html>