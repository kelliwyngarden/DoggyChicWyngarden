package tests;

import controller.AppointmentHelper;
import model.Appointment;

public class DeleteAppointment {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AppointmentHelper apphelp = new AppointmentHelper();
		Appointment toDelete = new Appointment(4);
		
		apphelp.deleteAppointment(toDelete);
		System.out.println(apphelp.showAllAppointments());
		
	}

}
