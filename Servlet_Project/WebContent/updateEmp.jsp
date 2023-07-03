<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	border: 1px solid orange;
	border-radius: 30%;
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
</style>
</head>
<body>

	<ul>
		<li><a href="index.jsp">Home</a></li>
		<li><a href="addEmp.jsp">Add Employee</a></li>
		<li><a href="updateEmp.jsp">Update Employee</a></li>
		<li><a href="deleteEmp.jsp">Delete Employee</a></li>
		<li><a href="displayEmpById.jsp">Display Employee By Id</a></li>
		<li><a href="displayAllEmp">Display All Employees</a></li>

	</ul>

	<form action="update" method="post">

		<h1>Registration Form</h1>

		<label>ID :-</label> <input type="text" name="id"
			placeholder="Enter Id Here"> <label>First Name :-</label><br>
		<input type="text" name="firstname"
			placeholder="Enter First Name Here"> <label>Last Name
			:-</label><br> <input type="text" name="lastname"
			placeholder="Enter Last Name Here"> <label>Date Of
			Birth :-</label><br> <input type="text" name="dob"
			placeholder="Enter Date Of Birth Here">

		<div>
			<label>Gender :-</label> <input class="gender" type="radio"
				name="gender" value="male">Male <input class="gender"
				type="radio" name="gender" value="female">Female <input
				class="gender" type="radio" name="gender" value="other">Other
		</div>

		<label>Phone :-</label> <input type="text" name="mobile"
			placeholder="Enter Mobile No. Here"> <label>Email ID
			:-</label> <input type="email" name="email" placeholder="Enter Email ID Here">

		<label>Password :-</label> <input type="password" name="password"
			placeholder="Enter Password Here"> <label>Blood Group
			:- </label> <select name="bloodGroup">
			<option value="" disabled="disabled" selected>Select Blood
				Group</option>
			<option value="A+">A+</option>
			<option value="A-">A-</option>
			<option value="B+">B+</option>
			<option value="B-">B-</option>
			<option value="O+">O+</option>
			<option value="O-">O-</option>
			<option value="AB+">AB+</option>
			<option value="AB-">AB-</option>
		</select><br>
		<br> <label>Address :-</label> <input type="text" name="address"
			placeholder="Enter Address Here"> <label>Live City :-</label>
		<input type="text" name="city" placeholder="Enter Live City Here">

		<label>Pincode :-</label> <input type="text" name="pincode"
			placeholder="Enter Pincode Here"> <input type="submit"
			value="updateEmployee">


	</form>

</body>
</html>