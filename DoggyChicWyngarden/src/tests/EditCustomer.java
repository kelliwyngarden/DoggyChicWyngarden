package tests;


import controller.CustomerHelper;
import model.Customer;

public class EditCustomer {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		CustomerHelper custhelp = new CustomerHelper();
		Customer toEdit = custhelp.searchForCustomerById(5);
		
		toEdit.setLastName("Wilson");
		custhelp.updateCustomer(toEdit);
		
		System.out.println(custhelp.showAllCustomers());
	}

}
