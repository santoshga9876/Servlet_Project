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

	<ul>
		<li><a href="index.jsp">Home</a></li>
		<li><a href="addEmp.jsp">Add Employee</a></li>
		<li><a href="updateEmp.jsp">Update Employee</a></li>
		<li><a href="deleteEmp.jsp">Delete Employee</a></li>
		<li><a href="displayEmpById.jsp">Display Employee By Id</a></li>
		<li><a href="displayAllEmp">Display All Employees</a></li>

	</ul>

<form action="displayEmpById" method="post">
		
		    <h1>Display Employee By Id</h1>
		    
		    <label>ID :-</label><br>
		    <input  type="text" name="id" placeholder="Enter Id Here">
		    
			
			<input  type="submit" value="displayEmpById" >
			
	
	</form>

</body>
</html>