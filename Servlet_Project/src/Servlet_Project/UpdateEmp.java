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

public class UpdateEmp extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String bloodGroup = request.getParameter("bloodGroup");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");
		
		
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_empdata","root","root");
			PreparedStatement ps = con.prepareStatement("update emp_data_table set     `fname`=?, `lname`=?, `dob`=?, `gender`=?, `mobile`=?, `email`=?, `password`=?, `bloodGroup`=?, `address`=?, `city`=?, `pincode`=? where id=?");

			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, dob);
			ps.setString(4, gender);
			ps.setString(5, mobile);
			ps.setString(6, email);
			ps.setString(7, password);
			ps.setString(8, bloodGroup);
			ps.setString(9, address);
			ps.setString(10, city);
			ps.setString(11, pincode);
			ps.setInt(12, id);
			
			Registration_page_entities e = new Registration_page_entities(id, fname, lname, dob, gender, mobile, email, password, bloodGroup, address,city, pincode);
			
			request.setAttribute("empData", e);
			
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

