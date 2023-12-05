package Register;

public class MemberDTO {

    private String id;
    private String password;
    private String name;
    private String phone;
    private int authority;
    
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
	public int getAuth() {
		return authority;
	}
	public void setAuth(int Auth) {
		this.authority = Auth;
	}



}

