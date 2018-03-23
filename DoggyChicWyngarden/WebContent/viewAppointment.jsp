<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Appointment Information</title>
<link rel="stylesheet" href="style.css" type="text/css">
<link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Satisfy">
</head>
<h1>Doggy Chic</h1>
<body>
	<h2>Appointment Receipt</h2>
	<form method = "post" action = "editAppointmentServlet">
		<div class = "receipt">
		<h3>Customer Information</h3>
		<input type = "hidden" name = "custId" value = "${customer.id}">
		Name: ${customer.firstName} ${customer.lastName} <br/>
		Address: ${customer.address}, ${customer.city}, ${customer.state} ${customer.zip} <br/>
		Phone Number: ${customer.phoneNumber} <br/>
		</div>
		<div class = "receipt">
		<h3>Pet Information</h3>
		<input type = "hidden" name = "petId" value = "${pet.id}">
		Name: ${pet.petName} <br/>
		Weight: ${pet.weight} <br/>
		Vaccinations Current: ${pet.hasShots} <br/>
		</div>
		<div class = "receipt">
		<h3>Appointment Scheduled</h3>
		<input type = "hidden" name = "apptId" value = "${appointment.id}">
		Date: ${appointment.appointmentDate} <br/>
		Start Time: ${appointment.startTime} <br/>
		End Time: ${appointment.endTime} <br/>
		Services: ${service.description} - $${service.cost} <br/>
		Pet Weight Upcharge: ${appointment.upcharge} <br/>
		Total Cost: ${appointment.totalCost}<br/>
		</div>
		<br/>
	<div class= "link-button">
	<input type = "submit" value = "Edit Customer Info" name = "doThisToItem">
	</div>
	<div class= "link-button">
	<input type = "submit" value = "Edit Pet Info" name = "doThisToItem">
	</div>
	<div class= "link-button">
	<input type = "submit" value = "Edit Appointment" name = "doThisToItem">
	</div>
	<div class= "link-button">
	<input type = "submit" value = "Cancel Appointment" name = "doThisToItem">
	</div>
	<div class= "link-button">
	<input type = "submit" value = "Back to Menu" name = "doThisToItem">
	</div>
	<div class= "link-button">
	<input type = "submit" value = "New Appointment" name = "doThisToItem">
	</div>
	<div class = "page-image">
	<img src = "images/dogGroup2.jpg">
	</div>
	</form>
</body>
</html>