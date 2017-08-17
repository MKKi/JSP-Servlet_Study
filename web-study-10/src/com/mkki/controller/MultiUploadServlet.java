package com.mkki.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class MultiUploadServlet
 */
@WebServlet("/upload2.do")
public class MultiUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MultiUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html; charset=UTF-8");
    	PrintWriter out = response.getWriter();
    	
    	String savePoint="upload";
    	int uploadFileSizeLimit = 5 * 1024 * 1024;
    	String encType = "UTF-8";
    	
    	//서버상의 실제 경로 찾기
    	ServletContext context = getServletContext();
    	String uploadFilePath = context.getRealPath(savePoint);
    	
    	try {
    		MultipartRequest multi = new MultipartRequest(request, uploadFilePath, uploadFileSizeLimit, encType, new DefaultFileRenamePolicy());
    		Enumeration<String> files = multi.getFileNames();
    		while(files.hasMoreElements()) {
    			String file = files.nextElement();
    			//클라이언트에서 업로드 된 원본 파일명 가져오기
    			String fileName = multi.getFilesystemName(file);
    			String oriFileName = multi.getOriginalFileName(file);
    			out.print("<br> 업로드 된 파일명 : "+ fileName);
    			out.print("<br> 원본 파일명 : "+ oriFileName);
    			out.print("<hr>");
    		}
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }

}
