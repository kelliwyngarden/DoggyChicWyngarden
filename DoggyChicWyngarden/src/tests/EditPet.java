package tests;

import controller.PetHelper;
import model.Pet;

public class EditPet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		PetHelper pethelp = new PetHelper();
		Pet toEdit = pethelp.searchForPetById(19);
		
		toEdit.setWeight(70);
		pethelp.updatePet(toEdit);
		
		System.out.println(pethelp.showAllPets());
		
	}

}
