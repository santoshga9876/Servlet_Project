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
			<th>Live City</th>
			<th>PinCode</th>
		</tr>
	
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
	
		
	</table>

</body>
</html>