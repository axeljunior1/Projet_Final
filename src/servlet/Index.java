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
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Db_utilisateur db_utilisateur =  new Db_utilisateur();
		
		Article article =  new Article();
		article.setNom("telephone");
		article.setDescription(" lite p 40 ");
		article.setCategorie("elec");
		article.setPrix((float) 100);
		article.setImage("image du p40");
		
		List<Article> listeArticle = new ArrayList<Article>();
		
		listeArticle.add(article);
		System.out.println(article.getIdarticle());
		Article a = new Article();
		
		a.setNom("telephone ps jeu");
		a.setDescription(" lite p 40 ");
		a.setCategorie("elec");
		a.setPrix((float) 100);
		a.setImage("image du p40");
		a.setIdarticle(5);

		System.out.println(a.getIdarticle());
		
		System.out.println(db_utilisateur.containtArticle(listeArticle, a));
		System.out.println(a.getNom().contains("ps pdff"));
		
		//db_utilisateur.addArticle(article);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String current_page = "active";
	
		
		doGet(request, response);
	}

}
