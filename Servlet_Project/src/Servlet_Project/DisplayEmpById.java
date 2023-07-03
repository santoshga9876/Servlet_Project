package Servlet_Project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DisplayEmpById extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_empdata","root","root");
			PreparedStatement ps = con.prepareStatement("select * from emp_data_table where id = ?");

			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			rs.next();
     
			int id1 =  rs.getInt("id");
			String fname =  rs.getString("fname");
            String lname =   rs.getString("lname");
            String dob =   rs.getString("dob");
            String gender =    rs.getString("gender");
            String mobile =   rs.getString("mobile");
            String email =    rs.getString("email");
            String password =   rs.getString("password");
            String bloodGroup =   rs.getString("bloodGroup");
            String address =   rs.getString("address");
            String city = rs.getString("city");
            String pincode =   rs.getString("pincode");
            
            Registration_page_entities e = new Registration_page_entities(id1, fname, lname, dob, gender, mobile, email, password,
    				bloodGroup, address, city, pincode);
           
            request.setAttribute("empData", e);
			System.out.println(rs);
			System.out.println(rs.getString("id"));
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		

		RequestDispatcher rd = request.getRequestDispatcher("show_data_table.jsp");
		rd.forward(request, response);

	}

}
