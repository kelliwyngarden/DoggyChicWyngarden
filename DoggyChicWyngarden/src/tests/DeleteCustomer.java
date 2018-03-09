package tests;

import controller.CustomerHelper;
import model.Customer;

public class DeleteCustomer {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		CustomerHelper custhelp = new CustomerHelper();
		Customer toDelete = new Customer(22);
		
		custhelp.deleteCustomer(toDelete);
		System.out.println(custhelp.showAllCustomers());
	}

}
