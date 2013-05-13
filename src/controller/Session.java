package controller;

public class Session {

	
	private static final Data data = new Data();
	private Operator[] operators = data.getOperators();
	
	public Operator[] getOperators() {
		return operators;
	}
	public void addOperator(Operator operator) { 
		data.addOperator(operator);
		
	}

}
