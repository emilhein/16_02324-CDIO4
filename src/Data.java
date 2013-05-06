public class Data {

	private ArrayList<Operator> operators = new ArrayList<Operator>();
	
	public Data() {
		//# TODO: Tilføj falske operatører her...
	}
	
	public Operator[] getOperators() {
		return operators.toArray(new Operator[operators.size()]);
	}

}