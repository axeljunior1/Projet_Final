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

import beans.B_connexion;
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
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		Db_utilisateur db_utilisateur = new Db_utilisateur();
		for (Utilisateur user : db_utilisateur.utilisateurs()) {
			System.out.println(user.getEmail());
			System.out.println(user.getEmail().equals("s@s"));
		}
		System.out.println(db_utilisateur.utilisateurs().size());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/connexion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		 Map<String, String> erreurs = new HashMap<String, String>();
	        
	        
		 
			Utilisateur connexion = new Utilisateur();

			String email=request.getParameter(CHAMP_EMAIL);
			String password=request.getParameter(CHAMP_PASS);

			Db_utilisateur db_utilisateur = new Db_utilisateur();
			
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
			
			if (erreurs.isEmpty()) {
				
				HttpSession session = request.getSession();
				//session.setAttribute("b_inscription", b_inscription);
				
				this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
			}else {
				request.setAttribute("erreurs", erreurs);
				//request.setAttribute("b_inscription", b_inscription);
				this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
			}
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/connexion.jsp").forward(request, response);
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
	 
	 private void validationMotsDePasse( String motDePasse ) throws Exception{
		    if (motDePasse != null && motDePasse.trim().length() != 0 ) {
		         if (motDePasse.trim().length() < 8) {
		            throw new Exception("Le mots de passe doit contenir au moins 8 caractères.");
		        }
		    } else {
		        throw new Exception("Merci de saisir et confirmer votre mot de passe.");
		    }
	 }

}
