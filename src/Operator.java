
public class Operator {
	// Operat퓊 id i omr똡et 1-99999999. v푡ges af brugeren 

	int oprId;
	// Operat퓊 nvan min.2 max.20 karakterer
	String oprNavn;
	// Operat퓊en initialer min 2 max. 3 karakterer
	String  ini;
	// Operat퓊 cpr-nr 10 karakterer
	String cpr;
	// operat퓊 password min. 7 max. 8 karakterer 
	String password;

	public Operator ( int oprId, String oprNavn, String ini, String cpr, String password){
		super();
		this.oprId = oprId;
		this.oprNavn = oprNavn;
		this.ini = ini;
		this.cpr = cpr;
		this.password = password;

	}
	public int getoprId(){
		return oprId;

	}
	public void setoprId(int oprId){
		this.oprId=oprId;

	}
	public String getOprNavn(){
		return oprNavn;

	}
	public void setOprNavn ( String oprNavn){
		this.oprNavn= oprNavn;
	}
	public String getIni(){
		return ini;
	}
	public void setIni( String ini){
		this.ini = ini;
	}
	public String getcpr(){
		return cpr;
	}
	public void setCpr (String cpr ){
		this.cpr = cpr;

	}
	public String getPassword (){
		return password;
	}
	public void setPasswod( String password){
		this.password = password;

	}
}
