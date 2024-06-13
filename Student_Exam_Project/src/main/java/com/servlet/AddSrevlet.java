package com.servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.connection.FactoryProvider;
import com.model.Student;

public class AddSrevlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String collageName = request.getParameter("collageName");
		String question1 = request.getParameter("question1");
		String question2 = request.getParameter("question2");
		String question3 = request.getParameter("question3");
		String question4 = request.getParameter("question4");
		String question5 = request.getParameter("question5");
		String question6 = request.getParameter("question6");
		String question7 = request.getParameter("question7");
		String question8 = request.getParameter("question8");
		String question9 = request.getParameter("question9");
		String question10 = request.getParameter("question10");
	
	
		Student b1 = new Student();
		Session session = FactoryProvider.getFactory().openSession();

		Transaction tx = session.beginTransaction();
		b1.setName(name);
		b1.setEmail(email);
		b1.setCollageName(collageName);
		b1.setQuestion1(question1);
		b1.setQuestion2(question2);
		b1.setQuestion3(question3);
		b1.setQuestion4(question4);
		b1.setQuestion5(question5);
		b1.setQuestion6(question6);
		b1.setQuestion7(question7);
		b1.setQuestion8(question8);
		b1.setQuestion9(question9);
		b1.setQuestion10(question10);
	
		
		
		
		
		

		session.save(b1);

		tx.commit();
		session.close();
//	    out.println("<html><body>");
//	    out.println("<h3 style='color: green;'>Blog added successfully!</h3>");
////
//        out.println("</body></html>");
		response.sendRedirect("show_all_blog.jsp");

	}

}
