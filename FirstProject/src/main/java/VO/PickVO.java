package VO;

public class PickVO {
	
	private String pickNo;
	private String memCode;
	private String symA;
	private String symB;
	private String symC;
	
	public String getPickNo() {
		return pickNo;
	}
	public String getMemCode() {
		return memCode;
	}
	public String getSymA() {
		return symA;
	}
	public String getSymB() {
		return symB;
	}
	public String getSymC() {
		return symC;
	}
	
	
	public PickVO(String symA, String symB, String symC) {
		this.symA = symA;
		this.symB = symB;
		this.symC = symC;
	}
	
	
	
	
	
}
