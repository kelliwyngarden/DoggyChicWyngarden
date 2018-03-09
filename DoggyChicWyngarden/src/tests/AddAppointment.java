package tests;

import java.time.LocalDate;
import java.time.LocalTime;

import controller.AppointmentHelper;
import controller.CustomerHelper;
import controller.PetHelper;
import model.Appointment;
import model.Customer;
import model.Pet;
import model.Services;

public class AddAppointment {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		CustomerHelper custhelp = new CustomerHelper();
		Customer doe = new Customer("John", "Doe", "3456778", "212 Fourth St.", "Des Moines", "IA", "50314");
		custhelp.addCustomer(doe);
		
		PetHelper pethelp = new PetHelper();
		Pet bob = new Pet("Bob", 45.0, 'y', doe);
		pethelp.addPet(bob);
		
		Services premium = new Services("Premium");
		
		LocalDate date = LocalDate.now();
		LocalTime start = LocalTime.now();
		
		AppointmentHelper apphelp = new AppointmentHelper();
		Appointment appA = new Appointment(doe, bob, premium, date, start);
		
		apphelp.addAppointment(appA);
		System.out.println(apphelp.showAllAppointments());

	}

}
