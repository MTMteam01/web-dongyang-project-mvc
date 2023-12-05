package Model;

public class MemberDTO {

    private String id;
    private String password;
    private String name;
    private String phone;
    private String authority;
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String passwordd) {
		this.password = passwordd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAuth() {
		return authority;
	}
	public void setAuth(String Auth) {
		this.authority = Auth;
	}



}

