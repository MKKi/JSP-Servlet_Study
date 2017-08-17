package com.mkki.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mkki.dao.ProductDAO;
import com.mkki.dto.ProductVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class ProductUpdateServelt
 */
@WebServlet("/productUpdate.do")
public class ProductUpdateServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductUpdateServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		
		
		ProductDAO pDao = ProductDAO.getInstance();
		ProductVO pVo = pDao.selectProductByCode(code);
		
		request.setAttribute("product", pVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productUpdate.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = getServletContext();
		String filePath = context.getRealPath("upload");
		int fileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		MultipartRequest multi = new MultipartRequest(request, filePath, fileSizeLimit, encType, new DefaultFileRenamePolicy());
		
		ProductVO pVo = new ProductVO();
		pVo.setCode(Integer.parseInt(multi.getParameter("code")));
		pVo.setName(multi.getParameter("name"));
		pVo.setPrice(Integer.parseInt(multi.getParameter("price")));
		pVo.setPictureurl(multi.getParameter("pictureurl"));
		pVo.setDescription(multi.getParameter("description"));
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.updateProduct(pVo);
		
		response.sendRedirect("productList.do");
	}

}
