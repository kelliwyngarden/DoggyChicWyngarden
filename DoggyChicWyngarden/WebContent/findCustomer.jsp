<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Information</title>
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Satisfy">
</head>
<h1>Doggy Chic</h1>
<body>
	<form method = "post" action = "setCustomerServlet">
	<div class = "form">
	<p>Please select correct customer:</p>
	<table>
	<c:forEach items = "${requestScope.matchingCustomers}" var = "currentcustomer">
	<tr>
		<td><input type="radio" name="id" value="${currentcustomer.id}"></td>
		<td>${currentcustomer.firstName}</td>
		<td>${currentcustomer.lastName}</td>
		<td>${currentcustomer.address}</td>
	</tr>
	</c:forEach>
	</table>
	</div>
	<br/>
	<div class = "link-button">
	<input type = "submit" value = "Select Customer" name = "doThisToItem">
	</div>
	<div class = "link-button">
	<input type = "submit" value = "New Customer" name = "doThisToItem">
	</div>
	<div class = "page-image">
	<img src = "images/dogGroup2.jpg">
	</div>
	</form>
</body>
</html>