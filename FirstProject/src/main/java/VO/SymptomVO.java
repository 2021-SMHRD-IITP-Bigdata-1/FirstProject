package VO;

public class SymptomVO {

	private String symCode;
	private String symName;

	public String getSymCode() {
		return symCode;
	}

	public String getSymName() {
		return symName;
	}

	public SymptomVO(String symCode, String symName) {
		this.symCode = symCode;
		this.symName = symName;
	}
	
}
