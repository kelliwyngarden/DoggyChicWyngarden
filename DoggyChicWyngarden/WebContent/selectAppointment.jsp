<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Your Appointment</title>
</head>
<body>
	<p>Please select appointment to view:</p>
	<form method = "post" action = "viewAppointmentServlet">
	<table>
	<c:forEach items = "${requestScope.matchingAppointments}" var = "currentappointment">
	<tr>
		<td><input type="radio" name="id" value="${currentappointment.id}"></td>
		<td>${currentappointment.customer.lastName}</td>
		<td>${currentappointment.pet.petName}</td>
		<td>${currentappointment.appointmentDate}</td>
	</tr>
	</c:forEach>
	</table>
	<input type = "submit" value = "Select Appointment" name = "doThisToAppt">
	<input type = "submit" value = "New Appointment" name = "doThisToAppt">
	<input type = "submit" value = "Back to Menu" name = "doThisToAppt">
	</form>
</body>
</html>