package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Utilisateur;
import database.Db_utilisateur;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/Inscription")
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */


	public static final String ATT_ERREURS  = "erreurs";
	public static final String ATT_RESULTAT = "resultat";
	public static final String CHAMP_EMAIL = "email";
	public static final String CHAMP_PASS = "password";
	public static final String CHAMP_CONF = "confirmPassword";
	public static final String CHAMP_NOM = "firstName";
	public static final String CHAMP_PRENOM = "lastName";




	public Inscription() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String resultat;
        Map<String, String> erreurs = new HashMap<String, String>();
        
        

		Utilisateur b_inscription = new Utilisateur();

		String firstName=request.getParameter(CHAMP_NOM);
		String lastName=request.getParameter(CHAMP_PRENOM);
		String email=request.getParameter(CHAMP_EMAIL);
		String password=request.getParameter(CHAMP_PASS);
		String confirmPassword = request.getParameter(CHAMP_CONF);
		
		b_inscription.setFirstName(firstName);
		b_inscription.setLastName(lastName);
		b_inscription.setEmail(email);
		b_inscription.setPassword(password);
		b_inscription.setConfirmPassword(confirmPassword);
		b_inscription.setPseudo("pseudo");

		Db_utilisateur db_utilisateur = new Db_utilisateur();

		

		try {
			validationEmail( email );
		} catch (Exception e) {
			erreurs.put(CHAMP_EMAIL, e.getMessage());
		}
		try {
			validationMotsDePasse( password, confirmPassword );
		} catch (Exception e) {
			erreurs.put(CHAMP_CONF, e.getMessage());
		}
		try {
			validationNom( firstName );
		} catch (Exception e) {
			erreurs.put(CHAMP_NOM, e.getMessage());
		}
		try {
			validationPrenom( lastName );
		} catch (Exception e) {
			erreurs.put(CHAMP_PRENOM, e.getMessage());
		}
		
		if (erreurs.isEmpty()) {
		
			db_utilisateur.addUser(b_inscription);
			HttpSession session = request.getSession();
			session.setAttribute("b_inscription", b_inscription);
			
			this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		}else {
			request.setAttribute("erreurs", erreurs);
			request.setAttribute("b_inscription", b_inscription);
			this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
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
	 
	 private void validationMotsDePasse( String motDePasse, String confirmation ) throws Exception{
		    if (motDePasse != null && motDePasse.trim().length() != 0 && confirmation != null && confirmation.trim().length() != 0) {
		        if (!motDePasse.equals(confirmation)) {
		            throw new Exception("Les mots de passe entr�s sont diff�rents, merci de les saisir � nouveau.");
		        } else if (motDePasse.trim().length() < 3) {
		            throw new Exception("Les mots de passe doivent contenir au moins 3 caract�res.");
		        }
		    } else {
		        throw new Exception("Merci de saisir et confirmer votre mot de passe.");
		    }
	 }
	 
	 private void validationNom( String nom ) throws Exception{
		 if ( nom != null && nom.trim().length() < 3 ) {
			 throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caract�res." );
		 }
	 }
	 
	 private void validationPrenom( String prenom ) throws Exception{
		 if ( prenom != null && prenom.trim().length() < 3 ) {
			 throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caract�res." );

		 }
	 }

}
