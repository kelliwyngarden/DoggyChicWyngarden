package model;
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/*@Entity
@Table(name = "appointment")
public class InStoreAppointment extends Appointment{
	@Column(name = "start_time")
	private LocalTime dropoff;
	@Column(name = "end_time")
	private LocalTime pickup;
	@Column(name = "appt_cd")
	private String type;
	
	public InStoreAppointment() {
		super();
		// TODO Auto-generated constructor stub
		setType();
	}

	public InStoreAppointment(Customer customer, Pet pet, Services services, LocalDate appointmentDate) {
		super(customer, pet, services, appointmentDate);
		// TODO Auto-generated constructor stub
		setType();
	}

	public InStoreAppointment(Customer customer, Pet pet, Services services, LocalDate appointmentDate,
			LocalTime dropoff) {
		super(customer, pet, services, appointmentDate);
		this.dropoff = dropoff;
		setPickup();
		setType();
	}

	public LocalTime getDropoff() {
		return dropoff;
	}

	public void setDropoff(LocalTime dropoff) {
		this.dropoff = dropoff;
	}

	public LocalTime getPickup() {
		return pickup;
	}

	public void setPickup() {
		this.pickup = dropoff.plusMinutes(45);
	}
	
	public String getType() {
		return type;
	}
	
	public void setType() {
		type = "I";
	}

	@Override
	public String printReceipt() {
		// TODO Auto-generated method stub
		DateTimeFormatter timeFormat = DateTimeFormatter.ofPattern("h:mm a");
		DecimalFormat df = new DecimalFormat("$###.00");
		return super.printReceipt() + "\nDropoff Time: " + timeFormat.format(dropoff) + "\nPickup Time: " + timeFormat.format(pickup) + "\nTotal Cost: " + df.format(totalCost);
	}
	
	
}
