package user;

import java.sql.Timestamp;

public class UserDTO {

	private String name, id, pw , gender, PN, email, address;
	private Timestamp regDate;

	// 아이디 중복검사 받을거
	public UserDTO(String id) {
		this.id = id;
	}
	
	public UserDTO(String id, String pw,  String name, String gender, String PN, String email, String address) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.PN = PN;
		this.email = email;
		this.address = address;
	}
	public UserDTO(String id, String pw, String name, String gender, String PN, String email, String address, Timestamp regDate) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.PN = PN;
		this.email = email;
		this.address = address;
		this.regDate = regDate;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPN() {
		return PN;
	}
	public void setPN(String pN) {
		PN = pN;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	public String toString() {
		return String.format("%s/%s/%s/%s/%s/%s/%s/%s",id, pw , name,  gender, PN, email, address,regDate);
	}
	
}
