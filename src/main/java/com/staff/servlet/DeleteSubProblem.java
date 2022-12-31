package com.staff.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SubProblemDao;
import com.db.DbConnect;

@WebServlet("/deleteSubProblem")
public class DeleteSubProblem extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int subproblemId = Integer.parseInt(req.getParameter("subproblemId"));
			SubProblemDao dao = new SubProblemDao(DbConnect.getCon());

			HttpSession session = req.getSession();
			try {

				boolean f = dao.deleteSubProblem(subproblemId);
				if (f) {
					session.setAttribute("sucMsg", "Subproblem deleted successfully.");
					resp.sendRedirect("staff/superAdmin/subProblems.jsp");
				} else {
					session.setAttribute("errorMsg", "Something went on server.");
					resp.sendRedirect("staff/superAdmin/subProblems.jsp");
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
