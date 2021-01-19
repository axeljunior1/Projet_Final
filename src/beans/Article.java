package beans;

public class Article {


	private String nom ;
	private String vendeur ;

	private String description ;
	private float prix ;
	private String categorie ;

	private String image ;
	
	private int idarticle;
	
	

	public int getIdarticle() {
		return idarticle;
	}
	public void setIdarticle(int idarticle) {
		this.idarticle = idarticle;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getVendeur() {
		return vendeur;
	}
	public void setVendeur(String vendeur) {
		this.vendeur = vendeur;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrix() {
		return prix;
	}
	public void setPrix(Float prix2) {
		this.prix = prix2;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	
	
	
	
	
}
