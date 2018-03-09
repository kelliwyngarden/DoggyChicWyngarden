<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Appointment Information</title>
</head>
<body>
	<form method = "post" action = "editAppointmentServlet">
		<h1>Customer Information:</h1>
		Name: ${customer.firstName} ${customer.lastName} <br/>
		Address: ${customer.address}, ${customer.city}, ${customer.state} ${customer.zip} <br/>
		Phone Number: ${customer.phoneNumber} <br/>
		<br/>
		<h1>Pet Information:</h1>
		Name: ${pet.petName} <br/>
		Weight: ${pet.weight} <br/>
		Vaccinations Current: ${pet.hasShots} <br/>
		<br/>
		<h1>Appointment Scheduled:</h1>
		Date: ${appointment.appointmentDate} <br/>
		Start Time: ${appointment.startTime} <br/>
		End Time: ${appointment.endTime} <br/>
		Services: ${service.description} - $${service.cost} <br/>
		Pet Weight Upcharge: ${appointment.upcharge} <br/>
		Total Cost: ${appointment.totalCost}<br/>
		<br/>
	<input type = "submit" value = "Edit Customer Info" name = "doThisToItem">
	<input type = "submit" value = "Edit Pet Info" name = "doThisToItem">
	<input type = "submit" value = "Edit Appointment" name = "doThisToItem">
	</form>
</body>
</html>