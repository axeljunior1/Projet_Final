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


@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	List<Article> liste_articles = new ArrayList<Article>();
    
    public Index() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Db_utilisateur db_utilisateur =  new Db_utilisateur();
		HttpSession session = request.getSession();
		
		liste_articles = db_utilisateur.articles();
		
		session.setAttribute("liste_articles", liste_articles);
		
		System.out.println(db_utilisateur.articles().size()!=0);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		HttpSession session = request.getSession();
		
		String search_bar = request.getParameter("search_bar");
		
		if (search_bar != "" || search_bar !=null) {
			Db_utilisateur db_utilisateur =  new Db_utilisateur();
			 liste_articles =  db_utilisateur.searchArticle(search_bar);
			if (liste_articles.size()!=0) {
				session.setAttribute("liste_articles", liste_articles );
			}else {
				session.setAttribute("reponse", "Aucun element trouvé");
			}

			this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		} 
		
	}

}
