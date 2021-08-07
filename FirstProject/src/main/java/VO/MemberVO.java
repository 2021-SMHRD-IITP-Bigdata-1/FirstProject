package VO;

public class MemberVO {

	private String id;
	private String pw;
	private String pwcheck;
	private String gender;
	private String birth;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPwcheck() {
		return pwcheck;
	}
	public void setPwcheck(String pwcheck) {
		this.pwcheck = pwcheck;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public MemberVO(String id, String pw, String pwcheck, String gender, String birth) {
		super();
		this.id = id;
		this.pw = pw;
		this.pwcheck = pwcheck;
		this.gender = gender;
		this.birth = birth;
	}
	
}
