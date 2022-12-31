package com.citizen.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Citizen;

@WebServlet("/citizenLogout")
public class CitizenLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			session.removeAttribute("citizenObj");
			session.setAttribute("sucMsg", "Citizen logout successfully.");
			resp.sendRedirect("citizenLogin.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
