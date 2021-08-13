package VO;

public class ProductVO {

	 private String pdtCode;
	 private String pdtName;
	 private String pdtBrand;
	 private String pdtCountry;
	 private String pdtPrice;
	 private String pdtDiscPrice;
	 private String pdtType;
	 private String pdtDailyIntake;
	 private String pdtOneIntake;
	 private String pdtJung;
	 private String pdtFree;
	 private String pdtContent;
	 
	public String getPdtCode() {
		return pdtCode;
	}
	public String getPdtName() {
		return pdtName;
	}
	public String getPdtBrand() {
		return pdtBrand;
	}
	public String getPdtCountry() {
		return pdtCountry;
	}
	public String getPdtPrice() {
		return pdtPrice;
	}
	public String getPdtDiscPrice() {
		return pdtDiscPrice;
	}
	public String getPdtType() {
		return pdtType;
	}
	public String getPdtDailyIntake() {
		return pdtDailyIntake;
	}
	public String getPdtOneIntake() {
		return pdtOneIntake;
	}
	public String getPdtJung() {
		return pdtJung;
	}
	public String getPdtFree() {
		return pdtFree;
	}
	public String getPdtContent() {
		return pdtContent;
	}
	public ProductVO(String pdtCode, String pdtName, String pdtBrand, String pdtCountry, String pdtPrice,
			String pdtDiscPrice, String pdtType, String pdtDailyIntake, String pdtOneIntake, String pdtJung ,String pdtFree,
			String pdtContent) {
		super();
		this.pdtCode = pdtCode;
		this.pdtName = pdtName;
		this.pdtBrand = pdtBrand;
		this.pdtCountry = pdtCountry;
		this.pdtPrice = pdtPrice;
		this.pdtDiscPrice = pdtDiscPrice;
		this.pdtType = pdtType;
		this.pdtDailyIntake = pdtDailyIntake;
		this.pdtOneIntake = pdtOneIntake;
		this.pdtJung = pdtJung;
		this.pdtFree = pdtFree;
		this.pdtContent = pdtContent;
	}
	

	 
	 
}