package Servlet_Project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class deleteEmp extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_empdata","root","root");
			PreparedStatement ps = con.prepareStatement("delete from emp_data_table where id = ?");

			ps.setString(1, id);
		
			
			int rs = ps.executeUpdate();
			System.out.println(rs);
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("show_data_table.jsp");
		rd.forward(request, response);
		
	}

}
