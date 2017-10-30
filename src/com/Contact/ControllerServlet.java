package com.Contact;

import java.io.*;
import java.util.HashMap;
import javax.servlet.*;
import javax.servlet.http.*;

public class ControllerServlet extends HttpServlet {

	HashMap<Integer, BeanClass> hm = new HashMap<>();

	public void store(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		int edit = (Integer) (req.getSession().getAttribute("num"));
		hm.get(edit).setName(req.getParameter("name1"));
		int age = Integer.parseInt(req.getParameter("age1").trim());
		if (age >= 14 && age <= 99) {
			hm.get(edit).setAge(age);
			String d = req.getParameter("dob1");
			int sub = Integer.parseInt(d.substring(0, (d.length() - 6)));
			if (sub <= 2003 && sub >= 1917) {
				hm.get(edit).setDob(req.getParameter("dob1"));
				long ph = Long.parseLong(req.getParameter("ph1").trim());
				if (ph >= 100000000 && ph <= 9999999999L) {
					hm.get(edit).setPh(ph);
					hm.get(edit).setEmail(req.getParameter("email1"));
					hm.get(edit).setAddr(req.getParameter("addr1"));
					res.getWriter().print("Edited succesfully");
					req.getRequestDispatcher("index.jsp").forward(req, res);
				} else {
					res.getWriter().print("Given Number is not a valid number<br>");
					res.getWriter().print("Enter a Valid Ph number");
					req.getRequestDispatcher("Edit.jsp").forward(req, res);
				}
			}

			else {
				res.getWriter().print("Given Date of Birth is not valid<br>Please Enter a valid Date Of Birth");
				req.getRequestDispatcher("Edit.jsp").forward(req, res);
			}
		} else {
			res.getWriter().print("Given age is not a valid one <br>Please give Age between 14 to 99");
			req.getRequestDispatcher("Edit.jsp").forward(req, res);
		}
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		BeanClass obj = new BeanClass();
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		int id = Integer.parseInt(req.getParameter("id"));
		if (!hm.containsKey(id)) {

			obj.setName(req.getParameter("name"));
			int age = Integer.parseInt(req.getParameter("age"));
			if (age >= 14 && age <= 99) {
				obj.setAge(age);
				String d = req.getParameter("dob");
				int sub = Integer.parseInt(d.substring(0, (d.length() - 6)));
				if (sub <= 2003 && sub >= 1917) {
					obj.setDob(req.getParameter("dob"));
					long ph = Long.parseLong(req.getParameter("ph").trim());
					if (ph >= 100000000 && ph <= 9999999999L) {

						/*
						 * for(Integer n:hm.keySet()) {
						 * if(ph==hm.get(n).getPh()){
						 * out.print("Given phone number already present");
						 * req.getRequestDispatcher("Create.jsp").forward(req,
						 * res); }}
						 */

						obj.setPh(ph);
						obj.setEmail(req.getParameter("email"));
						obj.setAddr(req.getParameter("adr"));
						hm.put(id, obj);
						HttpSession htps = req.getSession();
						/* htps.setAttribute("editobj", hm.get(id)); */
						htps.setAttribute("map", hm);

						out.print("Saved Succesfully");
						req.getRequestDispatcher("index.jsp").forward(req, res);
					} else {
						out.println("Given Phone number is not a valid one");
						req.getRequestDispatcher("Create.jsp").forward(req, res);
					}
				} else {
					out.print("Please Enter a valid Date Of Birth");
					req.getRequestDispatcher("Create.jsp").forward(req, res);
				}
			} else {
				out.print("Please Enter a valid age");
				req.getRequestDispatcher("Create.jsp").forward(req, res);
			}
		} else {
			out.print("Given Id Already Present.. Id should be unique");
			req.getRequestDispatcher("Create.jsp").forward(req, res);
		}
	}
}
