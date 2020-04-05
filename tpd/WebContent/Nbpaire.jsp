<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
﻿<html>
<head>
<title>Calcul nombre impaire</title>
</head>
<body>
<%
for (int i=0; i<10; i++) {
if (i % 2 != 0 ) {
%>
<b>Le nombre </b> <%= i %> <b> est impaire</b><br>
<%
}
}%>
</body>
</html>