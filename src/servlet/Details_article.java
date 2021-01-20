package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		this.getServletContext().getRequestDispatcher("/WEB-INF/details_article.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String id_article = request.getParameter("id_article");
		session.setAttribute("id_article", id_article);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/details_article.jsp").forward(request, response);
	}

}
