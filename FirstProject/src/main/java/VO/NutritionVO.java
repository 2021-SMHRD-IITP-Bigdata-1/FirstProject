package VO;

public class NutritionVO {
	
	private String nutCode;
	private String nutName;

	public String getNutName() {
		return nutName;
	}

	public String getNutCode() {
		return nutCode;
	}

	public NutritionVO(String nutCode, String nutName) {
		this.nutCode = nutCode;
		this.nutName = nutName;
	}

}
