package beans;

public class Utilisateur {


	private String firstName ;
	private String lastName ;
	private String email ;
	private String password ;
	private String ConfirmPassword ;
	private String pseudo;
	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
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


	public String getConfirmPassword() {
		return ConfirmPassword;
	}


	public void setConfirmPassword(String confirmPassword) {
		ConfirmPassword = confirmPassword;
	}


	public String getPseudo() {
		return pseudo;
	}


	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	
	
	
}
