<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
ul {
	display: inline;
}
li {
	display: inline;
	text-decoration: none;
	border:1px solid orange;
	border-radius: 30% ;	
}
a {
	text-decoration: none;
	display: inline-block;
	margin-left: 10px;
	font-size: 10px;
}

input {
	display: block;
	margin-top: 5px;
}
select {
	display: block;
}
#gender{
display: inline;
}
</style>

</head>
<body>

	<ul>
		<li><a href="index.jsp">Home</a></li>
		<li><a href="addEmp.jsp">Add Employee</a></li>
		<li><a href="updateEmp.jsp">Update Employee</a></li>
		<li><a href="deleteEmp.jsp">Delete Employee</a></li>
		<li><a href="displayEmpById.jsp">Show Employee By Id</a></li>
		<li><a href="ShowAllEmp">Show All Employees</a></li>

	</ul>

	<table border=1>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Date Of Birth</th>
			<th>Gender</th>
			<th>Mobile</th>
			<th>Email ID</th>
			<th>Password</th>
			<th>Blood Group</th>
			<th>Address</th>
			<th>City</th>
			<th>PinCode</th>
		</tr>
		<c:forEach var="empData" items="${Data}">
			<tr>
				<td>${empData.id}</td>
				<td>${empData.fname}</td>
				<td>${empData.lname}</td>
				<td>${empData.dob}</td>
				<td>${empData.gender}</td>
				<td>${empData.mobile}</td>
				<td>${empData.email}</td>
				<td>${empData.password}</td>
				<td>${empData.bloodGroup}</td>
				<td>${empData.address}</td>
				<td>${empData.city}</td>
				<td>${empData.pincode}</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>