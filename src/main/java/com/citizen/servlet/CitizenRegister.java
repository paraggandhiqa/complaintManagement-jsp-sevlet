package com.citizen.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CitizenDao;
import com.db.DbConnect;
import com.entity.Citizen;

@WebServlet("/citizenRegister")
public class CitizenRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String check = req.getParameter("staff");

			String firstName = req.getParameter("citizen_first_name");
			String lastName = req.getParameter("citizen_last_name");
			String userName = req.getParameter("citizen_user_name");
			String password = req.getParameter("citizen_password");
			String address = req.getParameter("citizen_address");
			String pinCodeString = req.getParameter("citizen_pincode");
			int pinCode = Integer.parseInt(pinCodeString);
			String mobile = req.getParameter("citizen_mobile");
			String email = req.getParameter("citizen_email");
			String gender = req.getParameter("citizen_gender");
			int questionsId = Integer.parseInt(req.getParameter("citizen_security_question_id"));
			String answer = req.getParameter("citizen_security_answer");

			Citizen citizen = new Citizen(firstName, lastName, userName, password, address, pinCode, mobile, email,
					gender, questionsId, answer);

			CitizenDao dao = new CitizenDao(DbConnect.getCon());

			HttpSession session = req.getSession();

			if (dao.checkDuplicateCitizen(citizen, email, mobile)) {
				session.setAttribute("errorMsg",
						"Email address or Mobile number already exists. Please enter new one.");
				resp.sendRedirect("citizenRegister.jsp");
			} else {
				boolean f = dao.CitizenRegister(citizen);
				if (f) {
					if (check == null) {
						session.setAttribute("sucMsg", "Registered successfully.");
						resp.sendRedirect("citizenRegister.jsp");
					} else {
						session.setAttribute("sucMsg", "Citizen registered successfully.");
						resp.sendRedirect("staff/operator/registerComplaint.jsp");
					}
				} else {
					// Error page
					session.setAttribute("errorMsg", "Something went wrong on server.");
					resp.sendRedirect("citizenRegister.jsp");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}