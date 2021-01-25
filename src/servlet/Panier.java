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
	
		    

			Map<Integer, Article> map = new HashMap<Integer, Article>();
			
			map = db_utilisateur.article_panier();
			

			
			request.setAttribute("map", map);
		this.getServletContext().getRequestDispatcher("/WEB-INF/panier.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		String string = request.getParameter("idarticle");
		
		int idarticle = Integer.parseInt(string);
		
		db_utilisateur.addArticlePanier(idarticle);
		
		Map<Integer, Article> map = db_utilisateur.article_panier();
		
		session.setAttribute("map", map);
		
		
//		session.setAttribute("articles_panier", db_utilisateur.article_panier());
//		System.out.println(db_utilisateur.article_panier().size());
//		
		this.getServletContext().getRequestDispatcher("/WEB-INF/panier.jsp").forward(request, response);
	}

}
