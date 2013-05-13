package controller;

import java.util.ArrayList;
public class Data {

	private ArrayList<Operator> operators = new ArrayList<Operator>();
	
	public Data() {
		operators.add(new Operator(1, "Test 1", "aa", "1111111111", "1111111"));
		operators.add(new Operator(2, "Test 2", "bb", "2222222222", "2222222"));
		operators.add(new Operator(3, "Test 3", "cc", "3333333333", "3333333"));
	}
	
	public Operator[] getOperators() {
		return operators.toArray(new Operator[operators.size()]);
	}
	public void addOperator(Operator operator) { 
		operators.add(operator);
		
	}
}