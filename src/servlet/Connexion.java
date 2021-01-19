package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Article;
import beans.Utilisateur;
import database.Db_utilisateur;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	public static final String CHAMP_EMAIL = "email";
	public static final String CHAMP_PASS = "password";
	
	// données de la DB
	Db_utilisateur db_utilisateur = new Db_utilisateur();
   
    public Connexion() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/connexion.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		 Map<String, String> erreurs = new HashMap<String, String>();
	        
	        
		 
			Utilisateur User = new Utilisateur();

			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			User.setEmail(email);
			User.setPassword(password);
			
			
			try {
				validationEmail( email );
			} catch (Exception e) {
				erreurs.put(CHAMP_EMAIL, e.getMessage());
			}
			try {
				validationMotsDePasse( password );
				
			} catch (Exception e) {
				erreurs.put(CHAMP_PASS, e.getMessage());
			}
			if(erreurs.isEmpty())
			try {
				validationIdDansDb(User);
			} catch (Exception e) {
				erreurs.put("notAUser", e.getMessage());
			}
			
			System.out.println(erreurs.size());
			
			// si la liste d'erreur ne contient pas d'erreur alors le formulaire est valide 
			if (erreurs.isEmpty()) {
				// on recupere la session en cours et on affecte des valeurs pour le nouvel utilisateur
				HttpSession session = request.getSession();
				User = db_utilisateur.findUser(User);
				String user_name = User.getLastName().toUpperCase();
				
				session.setAttribute("User", User);
				session.setAttribute("user_name", user_name);
				//renvois a la page d'acceuil 
				this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
			}else {
				// si le formuliare contient de erreurs alors retour a la jsp de connexion et affichage de ces erreurs
				request.setAttribute("erreurs", erreurs);
				//request.setAttribute("b_inscription", b_inscription);
				this.getServletContext().getRequestDispatcher("/WEB-INF/connexion.jsp").forward(request, response);
			}
	}
	
	
	private void validationEmail( String email ) throws Exception{
		 if ( email != null && email.trim().length() != 0 ) {
		        if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
		            throw new Exception( "Merci de saisir une adresse mail valide." );
		        }
		    } else {
		        throw new Exception( "Merci de saisir une adresse mail." );
		    }
	 }
	 
	private void validationIdDansDb(Utilisateur utilisateur)throws Exception {
		if (db_utilisateur.containtUser(utilisateur)==false) {
			System.out.println(db_utilisateur.containtUser(utilisateur)+":     je vais ajouter");
			System.out.println(utilisateur.getEmail()+"  "+ utilisateur.getPassword());
			
			throw new Exception( "Le mot de passe ou l'adresse email n'est pas reconu");
		}
	}
	
	 private void validationMotsDePasse( String motDePasse ) throws Exception{
		    if (motDePasse != null && motDePasse.trim().length() != 0 ) {
		         if (motDePasse.trim().length() < 8) {
		            throw new Exception("Le mots de passe doit contenir au moins 8 caractères.");
		        }
		    } else {
		        throw new Exception("Merci de saisir votre mot de passe.");
		    }
	 }

}
