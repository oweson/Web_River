package com.itheima.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;



import com.itheima.dao.WordsDao;
import com.itheima.dao.impl.WordsDaoImpl;
import com.itheima.domain.WordBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindWordsServlet
 */
public class FindWordsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		try {
			//1. 先获取参数
			String word = request.getParameter("word");
			System.out.println("word="+word);
			
			//2. 让dao执行查询
			WordsDao dao = new WordsDaoImpl();
			List<WordBean> list = dao.findWords(word);
			
			for (WordBean wordBean : list) {
				System.out.println("==="+wordBean.toString());
			}
			
			request.setAttribute("list", list);
			
			//3. 返回数据
			response.setContentType("text/html;charset=utf-8");
			//response.getWriter().write("数据是：");
//			响应这个jsp的页面，全部把它返回给请求者 ， 请求： 浏览器请求 ， 浏览器 看到jsp
			//$jquery ,来请
			request.getRequestDispatcher("list.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
