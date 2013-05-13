package controller;
public class Session {

	private static final Data data = new Data();
	private Operator[] operators;
	
	public Operator[] getOperators() {
		operators = data.getOperators();
		return operators;
	}
	
	public void addOperator(int identification, String name, String initials, String cpr, String password) { 
		data.addOperator(new Operator(identification, name, initials, cpr, password));
	}
	public void updateOperator(int index, int identification, String name, String initials, String cpr, String password) {
		operators[index].setIdentification(identification);
		operators[index].setName(name);
		operators[index].setInitials(initials);
		operators[index].setCPR(cpr);
		operators[index].setPassword(password);
	}

}
