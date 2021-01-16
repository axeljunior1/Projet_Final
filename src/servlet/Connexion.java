package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.B_connexion;
import beans.Utilisateur;
import database.Db_utilisateur;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
		Utilisateur utilisateur = new Utilisateur() ; 
		
		utilisateur.setFirstName("junior");
		utilisateur.setLastName("axelsdks");
		utilisateur.setEmail("fdfd@df");
		utilisateur.setPassword("menguedsfd");
		utilisateur.setConfirmPassword("menguedsfd");
		utilisateur.setPseudo("pseudo");
		
		Db_utilisateur db_utilisateur = new Db_utilisateur();
		db_utilisateur.addUser(utilisateur);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/connexion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		B_connexion b_connexion = new B_connexion();
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		b_connexion.setEmail(email); 
		b_connexion.setPassword(password);
		System.out.println(password);
		request.setAttribute("pass", password);
		
		/*if (false) {

			this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
		}*/
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/connexion.jsp").forward(request, response);
	}

}
