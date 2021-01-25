package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import beans.Article;
import beans.Panier;
import beans.Utilisateur;

public class Db_utilisateur {

	private Connection connexion = null ;


	public List<Utilisateur> utilisateurs() {

		List<Utilisateur> listeUtilisateurs = new ArrayList<Utilisateur>(); 
		Statement statement = null ; 
		ResultSet resultat = null ; 
		// chargement du driver
		loadDatabase();

		try {

			statement = connexion.createStatement();

			resultat = statement.executeQuery("SELECT * FROM db_projet_4a.utilisateurs;");

			while (resultat.next()) {

				String firstName = resultat.getString("firstName");
				String lastName = resultat.getString("lastName");
				String email = resultat.getString("email");
				String pseudo = resultat.getString("pseudo");
				String password = resultat.getString("password");

				Utilisateur utilisateur = new Utilisateur();
				utilisateur.setFirstName(firstName);
				utilisateur.setLastName(lastName);
				utilisateur.setEmail(email);
				utilisateur.setPassword(password);
				utilisateur.setPseudo(pseudo);
				listeUtilisateurs.add(utilisateur);

			}


		} catch (SQLException e) {
			e.printStackTrace();
		}finally {

			try {
				if (resultat!=null) resultat.close();
				if (statement!=null) statement.close();
				if (connexion!=null) connexion.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return listeUtilisateurs; 

	}





	public boolean containtUser(Utilisateur utilisateur) {


		Encryption encryption = new Encryption();
		String pass_md5 = encryption.MD5(utilisateur.getPassword());
		System.out.println(pass_md5);
		for (Utilisateur user : utilisateurs()) {

			if (user.getEmail().equals(utilisateur.getEmail()) && user.getPassword().equals(pass_md5)) {
				return true;
			}
		}
		return false;

	}

	public Utilisateur findUser(Utilisateur utilisateur) {

		Encryption encryption = new Encryption();
		String pass_md5 = encryption.MD5(utilisateur.getPassword());
		System.out.println(pass_md5);
		for (Utilisateur user : utilisateurs()) {
			
			if (user.getEmail().equals(utilisateur.getEmail()) && user.getPassword().equals(pass_md5)) {
				return user;
			}
		}
		return null;
	}


// ajout d'user 
	public void addUser( Utilisateur utilisateur) {
		loadDatabase();

		try {

			PreparedStatement preparableStatement =  connexion.prepareStatement("INSERT INTO utilisateurs(firstName, lastName, email, password, confirmPassword, pseudo) VALUES (?,?,?,MD5(?),MD5(?),?);");
			preparableStatement.setString(1, utilisateur.getFirstName());
			preparableStatement.setString(2, utilisateur.getLastName());
			preparableStatement.setString(3, utilisateur.getEmail());
			preparableStatement.setString(4, utilisateur.getPassword());
			preparableStatement.setString(5, utilisateur.getConfirmPassword());
			preparableStatement.setString(6, utilisateur.getPseudo());

			preparableStatement.executeUpdate();

		} catch (Exception e) {
			System.out.println("pb a l'ajout ");
			e.printStackTrace();
		}
	}

	
	
	

	// table article 

	public List<Article> articles() {

		List<Article> listeArticles = new ArrayList<Article>(); 
		Statement statement = null ; 
		ResultSet resultat = null ; 
		// chargement du driver
		loadDatabase();

		try {

			statement = connexion.createStatement();

			resultat = statement.executeQuery("SELECT * FROM db_projet_4a.articles;");

			while (resultat.next()) {

				String nom = resultat.getString("nom");
				String description = resultat.getString("description");
				float prix = resultat.getFloat("prix");
				String categorie = resultat.getString("categorie");
				String image = resultat.getString("image");
				int idarticle = resultat.getInt("idarticles");
				String vendeur = resultat.getString("vendeur");

				Article article = new Article();
				article.setNom(nom);
				article.setDescription(description);
				article.setPrix((float) prix);
				article.setImage(image);
				article.setCategorie(categorie);
				article.setIdarticle(idarticle);
				article.setVendeur(vendeur);
				listeArticles.add(article);

			}


		} catch (SQLException e) {
			e.printStackTrace();
		}finally {

			try {
				if (resultat!=null) resultat.close();
				if (statement!=null) statement.close();
				if (connexion!=null) connexion.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return listeArticles; 

	}


// ajouter un article dans la base de données 
	public void addArticle( Article article) {
		loadDatabase();

		try {

			PreparedStatement preparableStatement =  connexion.prepareStatement("INSERT INTO articles(nom, description, prix, categorie, image) VALUES (?,?,?,?,?);");
			preparableStatement.setString(1, article.getNom());
			preparableStatement.setString(2, article.getDescription());
			preparableStatement.setFloat(3, article.getPrix());
			preparableStatement.setString(4, article.getCategorie());
			preparableStatement.setString(5, article.getImage());

			preparableStatement.executeUpdate();

		} catch (Exception e) {
			System.out.println("pb a l'ajout ");
			e.printStackTrace();
		}
	}

// la liste listeArticle contient l'article article1 ?
	public boolean containtArticle(List<Article> listeArticle,  Article article1) {

		for (Article article : listeArticle) {

			if (article.getIdarticle()==article1.getIdarticle() && article.getCategorie() == article1.getCategorie() && article.getDescription() == article1.getDescription() && article.getNom() == article1.getNom()) {
				return true;
			}
		}
		return false;

	}
	
	
	// la liste listeArticle contient l'article article1 ?
	public boolean ArticlecontaintNom( Article article, String string) {

			if (article.getDescription().contains(string) || article.getNom().contains(string) || article.getVendeur().contains(string) || article.getCategorie().contains(string)) {
				return true;
		}
		return false;
	}

// rechercher un article dans la data base (bare de recherche)
	public List<Article> searchArticle(String string) {
		
		List<Article> listeArticle = new ArrayList<Article>();

		String tab_split[] = string.split(" ");
		
		for (Article atl : articles()) {
			
			for (String string2 : tab_split) {
				if (ArticlecontaintNom(atl, string2) && containtArticle(listeArticle, atl)==false) {
					listeArticle.add(atl);
				}
			}
		}
		return listeArticle;

	}
	
	
	// revoie d'un article a partir de son id 
		public Article searchArticleById(int idarticle ) {
			
			for (Article atl : articles()) {
				
					if(atl.getIdarticle()==idarticle) return atl;
				
			}
			return null;

		}
	


		
		
// table panier 
		
		//liste des aticles dans le panier 
		public Map<Integer, Article> article_panier() {

			Map<Integer, Article> map_article_panier = new HashMap<Integer, Article>();
			
			Statement statement = null ; 
			ResultSet resultat = null ; 
			// chargement du driver
			loadDatabase();

			try {

				statement = connexion.createStatement();

				resultat = statement.executeQuery("SELECT * FROM db_projet_4a.panier;");

				while (resultat.next()) {

					int idarticle = resultat.getInt("idarticle");
					int idarticle_panier = resultat.getInt("idarticle_panier");

					Panier panier = new Panier();
					panier.setIdarticle(idarticle);
					panier.setIdarticle_panier(idarticle_panier);
					map_article_panier.put(idarticle_panier, searchArticleById(panier.getIdarticle()));
				}


			} catch (SQLException e) {
				e.printStackTrace();
			}finally {

				try {
					if (resultat!=null) resultat.close();
					if (statement!=null) statement.close();
					if (connexion!=null) connexion.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			
			return map_article_panier; 

		}

		
		// ajout article dans le panier  
		public void addArticlePanier( int  idarticle) {
			loadDatabase();

			try {

				PreparedStatement preparableStatement =  connexion.prepareStatement("INSERT INTO panier(idarticle) VALUES (?);");
				
				preparableStatement.setInt(1, idarticle);

				preparableStatement.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// supprimer article dans le panier  
		public void SuppArticlePanier( int  idarticle_panier) {
			loadDatabase();

			try {

				PreparedStatement preparableStatement =  connexion.prepareStatement("DELETE FROM panier WHERE ('idarticle_panier = '?');");
				
				preparableStatement.setInt(1, idarticle_panier);

				preparableStatement.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		

// chargement de la base de données 
	private void loadDatabase() {
		// Chargement du driver
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("chargement du driver");
		}

		try {
			connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_projet_4a?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "root");

		} 
		catch (SQLException e) {
			System.out.println("connect a la bd ");
			e.printStackTrace();
		}
	}
}
