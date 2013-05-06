
public class Operator {
	// Operat�r id i omr�det 1-99999999. v�lges af brugeren 

	int Identification;
	// Operat�r nvan min.2 max.20 karakterer
	String Name;
	// Operat�ren initialer min 2 max. 3 karakterer
	String  Initials;
	// Operat�r cpr-nr 10 karakterer
	String CPR;
	// operat�r password min. 7 max. 8 karakterer 
	String Password;

	public Operator ( int oprId, String oprNavn, String ini, String cpr, String password){
		super();
		this.Identification = oprId;
		this.Name = oprNavn;
		this.Initials = ini;
		this.CPR = cpr;
		this.Password = password;

	}
	public int getIdentification(){
		return Identification;

	}
	public void setIdentification(int oprId){
		this.Identification=oprId;

	}
	public String getName(){
		return Name;

	}
	public void setName ( String oprNavn){
		this.Name= oprNavn;
	}
	public String getInitials(){
		return Initials;
	}
	public void setInitials( String ini){
		this.Initials = ini;
	}
	public String getCPR(){
		return CPR;
	}
	public void setCPR (String cpr ){
		this.CPR = cpr;

	}
	public String getPassword (){
		return Password;
	}
	public void setPasswod( String password){
		this.Password = password;

	}
}
