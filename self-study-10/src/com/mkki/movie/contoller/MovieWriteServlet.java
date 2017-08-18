package com.mkki.movie.contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mkki.movie.dao.MovieDAO;
import com.mkki.movie.dto.copy.MovieVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class movieWriteServlet
 */
@WebServlet("/moviewrite.do")
public class MovieWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("movie/movieWrite.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filePath = request.getServletContext().getRealPath("images");
		int fileSizeLimit = 5*1024*1024;
		String encType="UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, filePath, fileSizeLimit, encType, new DefaultFileRenamePolicy());
		MovieVO mVo = new MovieVO();
		mVo.setTitle(multi.getParameter("title"));
		mVo.setPrice(Integer.parseInt(multi.getParameter("price")));
		mVo.setDirector(multi.getParameter("director"));
		mVo.setActor(multi.getParameter("actor"));
		mVo.setSynopsis(multi.getParameter("synopsis"));
		mVo.setPoster(multi.getFilesystemName("poster"));
		
		MovieDAO mDao = MovieDAO.getInstance();
		mDao.insertMovie(mVo);
		
		response.sendRedirect("movielist.do");
	}

}
