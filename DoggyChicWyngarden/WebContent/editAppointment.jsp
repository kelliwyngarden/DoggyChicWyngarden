<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Appointment</title>
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Satisfy">
</head>
<h1>Doggy Chic</h1>
<body>
	<form action = "editAppointmentServlet" method = "post">
			<div class = "form">
			<label for = "appointmentDate">Choose an appointment date:</label>
			<input type = "date" name = "appointmentDate" value = "${appointmentToEdit.appointmentDate}">
			</div>
			<br/>
			<div class = "form">
			<label for="startTime">Choose an appointment time: </label>
  			<input type="time" name="startTime" value = "${appointmentToEdit.startTime}">
			</div>
			<br/>
			<div class = "form">
			Please select a service package: <select name = "planName">
				<option value = "basic">Wash, dry, and nail trim - $30</option>
				<option value = "premium">Wash, dry, nail trim, haircut - $40</option>
				<option value = "super">Wash, dry, nail trim, haircut, and furminator - $50</option>
			</select>
			</div>
			</br>
		<input type = "hidden" name = "id" value = "${appointmentToEdit.id}">
		<div class = "link-button">
		<input type = "submit" value = "Save Edited Appointment" name = "doThisToItem">
		</div>
		<div class = "page-image">
		<img src = "images/dogGroup2.jpg">
		</div>
	</form>
</body>
</html>