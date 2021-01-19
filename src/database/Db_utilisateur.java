package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import beans.Article;
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
				String confirmPassword = resultat.getString("confirmPassword");

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

		for (Utilisateur user : utilisateurs()) {

			if (user.getEmail().equals(utilisateur.getEmail()) && user.getPassword().equals(utilisateur.getPassword())) {
				return true;
			}
		}
		return false;

	}

	public Utilisateur findUser(Utilisateur utilisateur) {

		for (Utilisateur user : utilisateurs()) {

			if (user.getEmail().equals(utilisateur.getEmail()) && user.getPassword().equals(utilisateur.getPassword())) {
				return user;
			}
		}
		return null;
	}



	public void addUser( Utilisateur utilisateur) {
		loadDatabase();

		try {

			PreparedStatement preparableStatement =  connexion.prepareStatement("INSERT INTO utilisateurs(firstName, lastName, email, password, confirmPassword, pseudo) VALUES (?,?,?,?,?,?);");
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

	public void addArticle( Article article) {
		loadDatabase();

		try {

			PreparedStatement preparableStatement =  connexion.prepareStatement("INSERT INTO articles(nom, description, prix, categorie, image) VALUES (?,?,?,?,?);");
			preparableStatement.setString(1, article.getNom());
			preparableStatement.setString(2, article.getDescription());
			preparableStatement.setString(3, article.getPrix());
			preparableStatement.setString(4, article.getCategorie());
			preparableStatement.setString(5, article.getImage());

			preparableStatement.executeUpdate();

		} catch (Exception e) {
			System.out.println("pb a l'ajout ");
			e.printStackTrace();
		}
	}


	

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
