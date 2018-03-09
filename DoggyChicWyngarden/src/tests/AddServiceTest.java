package tests;

import controller.ServiceHelper;
import model.Services;

public class AddServiceTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ServiceHelper servhelp = new ServiceHelper();
		Services basic = new Services("Basic");
		Services premium = new Services("Premium");
		Services superServ = new Services("Super");
		
		servhelp.addService(basic);
		servhelp.addService(premium);
		servhelp.addService(superServ);
		System.out.println(servhelp.showAllServices());
	}

}
