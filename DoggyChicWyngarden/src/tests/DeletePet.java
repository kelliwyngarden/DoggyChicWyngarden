package tests;

import controller.PetHelper;
import model.Pet;

public class DeletePet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		PetHelper pethelp = new PetHelper();
		Pet toDelete = new Pet(18);
		
		pethelp.deletePet(toDelete);
		System.out.println(pethelp.showAllPets());
		
	}

}
