package cn.bole.pojo;

public class User extends BasicInfo{
    private String email;
    private String password;
    private String id;
    
    
    public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [email=" + email + ", password=" + password + ", id=" + id + "]";
	}
	
	
}
