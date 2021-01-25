package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Article;
import database.Db_utilisateur;

/**
 * Servlet implementation class Details_article
 */
@WebServlet("/Details_article")
public class Details_article extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Details_article() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

//		Db_utilisateur db_utilisateur= new Db_utilisateur();
//
//		int id_article = Integer.parseInt (request.getParameter(z));
//		Article article = new Db_utilisateur().searchArticleById(id_article);
//
//		List<Article> articles = new ArrayList<>() ;
//		 articles = db_utilisateur.searchArticle(article.getNom());
//		if (true) {
//			System.out.println("true");
//
//			
//		}
//		
		this.getServletContext().getRequestDispatcher("/WEB-INF/details_article.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int id_article = Integer.parseInt (request.getParameter("id_article"));
		
		Db_utilisateur db_utilisateur= new Db_utilisateur();
				
		Article article = new Db_utilisateur().searchArticleById(id_article);
		
		session.setAttribute("article", article);
		
		// affichage des articles similaires 
		
		List<Article> articles = new ArrayList<>() ;
		 articles = db_utilisateur.searchArticle(article.getNom());
		 if (true) {

				System.out.println(articles.size());
			}
			
		
		session.setAttribute("articles", articles);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/details_article.jsp").forward(request, response);
	}

}
