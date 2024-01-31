package gestion;

public class Pointage {
	int Id;
	String Enseignant;
	String Date;
	String EntreeMatin;
	String SortieMatin;
	String EntreeApresMidi;
	String SortieApresMidi;
	
	
	public Pointage(int id, String enseignant, String date, String entreeMatin,
			String sortieMatin, String entreeApresMidi, String sortieApresMidi) {
		super();
		Id = id;
		Enseignant = enseignant;
		Date = date;
		EntreeMatin = entreeMatin;
		SortieMatin = sortieMatin;
		EntreeApresMidi = entreeApresMidi;
		SortieApresMidi = sortieApresMidi;
	}
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getEnseignant() {
		return Enseignant;
	}
	public void setEnseignant(String enseignant) {
		Enseignant = enseignant;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getEntreeMatin() {
		return EntreeMatin;
	}
	public void setEntreeMatin(String entreeMatin) {
		EntreeMatin = entreeMatin;
	}
	public String getSortieMatin() {
		return SortieMatin;
	}
	public void setSortieMatin(String sortieMatin) {
		SortieMatin = sortieMatin;
	}
	public String getEntreeApresMidi() {
		return EntreeApresMidi;
	}
	public void setEntreeApresMidi(String entreeApresMidi) {
		EntreeApresMidi = entreeApresMidi;
	}
	public String getSortieApresMidi() {
		return SortieApresMidi;
	}
	public void setSortieApresMidi(String sortieApresMidi) {
		SortieApresMidi = sortieApresMidi;
	}

	@Override
	public String toString() {
		return "Pointage [Id=" + Id + ", Enseignant=" + Enseignant + ", Date="
				+ Date + ", EntreeMatin=" + EntreeMatin + ", SortieMatin="
				+ SortieMatin + ", EntreeApresMidi=" + EntreeApresMidi
				+ ", SortieApresMidi=" + SortieApresMidi + "]";
	}
	
	
	
}
