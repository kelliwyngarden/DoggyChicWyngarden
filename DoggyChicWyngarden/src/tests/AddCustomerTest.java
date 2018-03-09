package tests;

import controller.CustomerHelper;
import model.Customer;


public class AddCustomerTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		CustomerHelper custhelp = new CustomerHelper();
		Customer smith = new Customer("Jane", "Smith", "1234567890", "345 Elm St.", "Des Moines", "IA", "50310");
		
		custhelp.addCustomer(smith);
		//custhelp.deleteCustomer(smith);
		System.out.println(custhelp.showAllCustomers());

	}

}
