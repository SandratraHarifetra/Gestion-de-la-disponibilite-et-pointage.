package gestion;

public class User {
	int Id;
	String Email;
	String Role;
	String Password;
	
	String Matricule;
	String Nom;
	String Prenoms;
	String ElementConstitutive;
	String Niveau;
	String Contact;
	
	
	
	
	
	public User(int id, String email, String role, String password,
			String matricule, String nom, String prenoms,
			String elementConstitutive, String niveau, String contact) {
		super();
		Id = id;
		Email = email;
		Role = role;
		Password = password;
		Matricule = matricule;
		Nom = nom;
		Prenoms = prenoms;
		ElementConstitutive = elementConstitutive;
		Niveau = niveau;
		Contact = contact;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getMatricule() {
		return Matricule;
	}
	public void setMatricule(String matricule) {
		Matricule = matricule;
	}
	public String getNom() {
		return Nom;
	}
	public void setNom(String nom) {
		Nom = nom;
	}
	public String getPrenoms() {
		return Prenoms;
	}
	public String getNomComplet(){
		return getNom()+ " " +getPrenoms();
	}
	public void setPrenoms(String prenoms) {
		Prenoms = prenoms;
	}
	public String getElementConstitutive() {
		return ElementConstitutive;
	}
	public void setElementConstitutive(String elementConstitutive) {
		ElementConstitutive = elementConstitutive;
	}
	public String getNiveau() {
		return Niveau;
	}
	public void setNiveau(String niveau) {
		Niveau = niveau;
	}
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	@Override
	public String toString() {
		return "User [Id=" + Id + ", Email=" + Email + ", Role=" + Role
				+ ", Password=" + Password + ", Matricule=" + Matricule
				+ ", Nom=" + Nom + ", Prenoms=" + Prenoms
				+ ", ElementConstitutive=" + ElementConstitutive + ", Niveau="
				+ Niveau + ", Contact=" + Contact + "]";
	}

	
	
	
	

	
	
	
	
	

	
	
}
