package com.itheima.servlet;

import com.itheima.dao.CityDao;
import com.itheima.dao.impl.CityDaoImpl;
import com.itheima.domain.CityBean;
import com.thoughtworks.xstream.XStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Servlet implementation class CityServlet
 */
@SuppressWarnings("serial")
public class CityServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// 1. 获取参数
			int pids = Integer.parseInt(request.getParameter("pid"));
			int pid = Integer.parseInt(request.getParameter("pid"));

			// 2 找出所有的城市
			CityDao cityDao02 = new CityDaoImpl();
			List<CityBean> findAll = cityDao02.findAll(pids);
			CityDao dao = new CityDaoImpl();
			List<CityBean> list = dao.findAll(pid);

			// 3. 返回数据。手动拼 ---> XStream 转化 bean对象成 xml
			XStream xStream = new XStream();
			XStream xStream2 = new XStream();

			// 想把id做成属性
			// xStream.useAttributeFor(CityBean.class, "id");
			// 设置别名
			xStream.alias("city", CityBean.class);
			xStream2.alias("ppx", CityBean.class);
			// 转化一个对象成xml字符串
			String xml = xStream.toXML(list);
			String xml2 = xStream2.toXML(findAll);

			// 返回数据
			response.setContentType("text/xml;charset=utf-8");
			response.getWriter().write(xml);
			//response.getWriter().write(xml2);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
