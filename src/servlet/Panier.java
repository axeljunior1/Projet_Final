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

import beans.Article;
import database.Db_utilisateur;



@WebServlet("/Panier")
public class Panier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	

	Db_utilisateur db_utilisateur = new Db_utilisateur();

    public Panier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
		    

			Map<Integer, Article> map = new HashMap<Integer, Article>();
			
			map = db_utilisateur.article_panier();
			

			
			session.setAttribute("map", map);
		this.getServletContext().getRequestDispatcher("/WEB-INF/panier.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		if (request.getParameter("retire_article_panier") != null) {

			int retire_article_panier = Integer.parseInt(request.getParameter("retire_article_panier"));
			
			db_utilisateur.SuppArticlePanier(retire_article_panier);
			
		}
		
		
		if (request.getParameter("idarticle") != null) {
			
			String string = request.getParameter("idarticle");
			
			int idarticle = Integer.parseInt(string);
			
			db_utilisateur.addArticlePanier(idarticle);
		}
		
		Map<Integer, Article> map = db_utilisateur.article_panier();
		
		session.setAttribute("map", map);
				
		this.getServletContext().getRequestDispatcher("/WEB-INF/panier.jsp").forward(request, response);
	}

}
