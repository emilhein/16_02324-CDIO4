package controller;
public class Operator {

	int identification;	// Operatør id (1-99999999)
	String name;		// Operatør navn (2-20 karakterer)
	String initials;	// Operatør initialer (2-3 karakterer)
	String cpr;			// Operatør CPR (10 karakterer, kun tal)
	String password;	// Operatør adgangskode (7-8 karakterer)

	public Operator (int identification, String name, String initials, String cpr, String password) {
		this.identification = identification;
		this.name = name;
		this.initials = initials;
		this.cpr = cpr;
		this.password = password;
	}
	
	public int getIdentification() {
		return identification;
	}
	public void setIdentification(int identification) {
		this.identification = identification;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInitials() {
		return initials;
	}
	public void setInitials(String initials) {
		this.initials = initials;
	}
	public String getCPR() {
		return cpr;
	}
	public void setCPR(String cpr) {
		this.cpr = cpr;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}