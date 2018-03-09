/*package tests;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Scanner;

import model.Customer;
import model.InStoreAppointment;
import model.Pet;
import model.Services;

public class GroomingTester {
	
	static Scanner in = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		System.out.print("Enter customer name: ");
		String customerName = in.nextLine();
		System.out.print("Enter customer phone number: ");
		String phoneNumber = in.nextLine();
		System.out.print("Enter customer address: ");
		String address = in.nextLine();
		
		Customer custA = new Customer(customerName, phoneNumber, address);
		
		System.out.print("Enter pet name: ");
		String petName = in.nextLine();
		System.out.print("Enter " + petName + "'s weight: ");
		double weight = in.nextDouble();
		System.out.print("Is " + petName + " up-to-date on shots? ");
		boolean hasShots = in.nextBoolean();
		
		Pet petA = new Pet(petName, weight, hasShots);
		
		Services servicesA = new Services();
		
		System.out.println("Service plans: ");
		servicesA.getPlanDetails();
		System.out.print("Select plan: ");
		String planName = in.nextLine();
		
		servicesA.setPlanName(planName);
		
		InStoreAppointment appt = new InStoreAppointment(custA, petA, servicesA, LocalDate.of(2018, 4, 11), LocalTime.of(12, 30));
		System.out.println(appt.printReceipt());
		
		appt.printReceipt();
	}
	
	
} 
