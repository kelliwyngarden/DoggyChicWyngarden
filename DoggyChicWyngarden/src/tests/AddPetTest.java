package tests;

import controller.PetHelper;
import model.Customer;
import model.Pet;

public class AddPetTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Customer owner = new Customer();
		PetHelper pethelp = new PetHelper();
		Pet dog = new Pet("Fido", 55.0, 'y', owner);
		
		pethelp.addPet(dog);
		System.out.println(pethelp.showAllPets());
	}

}
