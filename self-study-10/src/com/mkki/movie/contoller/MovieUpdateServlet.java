package com.mkki.movie.contoller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
 * Servlet implementation class MovieUpdateServlet
 */
@WebServlet("/movieupdate.do")
public class MovieUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer code = Integer.parseInt(request.getParameter("code"));
		
		MovieDAO mDao = MovieDAO.getInstance();
		MovieVO mVo = mDao.selectMoiveByCode(code);
		
		request.setAttribute("updatedMovie", mVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("movie/movieUpdate.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletContext();
		String filePath = context.getRealPath("images");
		int fileSizeLimit = 5*1024*1024;
		String encType="UTF-8";
		MultipartRequest multi = new MultipartRequest(request, filePath, fileSizeLimit, encType, new DefaultFileRenamePolicy());
		
		MovieVO mVo = new MovieVO();
		mVo.setCode(Integer.parseInt(multi.getParameter("code")));
		mVo.setTitle(multi.getParameter("title"));
		mVo.setPrice(Integer.parseInt(multi.getParameter("price")));
		mVo.setDirector(multi.getParameter("director"));
		mVo.setActor(multi.getParameter("actor"));
		//보내진 파일이 없으면 기존 poster 속성 값(noImg 속성 값)
		if(multi.getFilesystemName("poster") == null) {
			mVo.setPoster(multi.getParameter("noImg"));
		} else {
			mVo.setPoster(multi.getFilesystemName("poster"));
		}
		mVo.setSynopsis(multi.getParameter("synopsis"));
	
		MovieDAO mDao = MovieDAO.getInstance();
		mDao.updateMovie(mVo);
		
		response.sendRedirect("movielist.do");
	}
}
