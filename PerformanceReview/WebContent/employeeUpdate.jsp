<%-- 
    Document   : Update Employee 
    Created on : 15.06.2020
    Author     : Rubina Brijith Antony
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

.navbar {
	overflow: hidden;
	background-color: white;
	color: black;
}

.navbar a {
	float: right;
	font-size: 16px;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: right;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: black;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: #182d59;
	color: white;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #182d59;
	color: white;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.back {
	font-family: Arial, Helvetica, sans-serif;
	background-image: url('money.jpg');
	background-repeat: no-repeat;
	background-size: 100%;
	height: 535px;
	color: black;
	padding: 0px;
}

.employee {
	padding-left: 30px;
	padding-top: 10px;
	display: block;
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #0000006e;
	width: 40%;
	height: 60%;
	max-width: 600px;
	max-height: 600px;
	-webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.8);
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.38);
	margin-left: 450px;
}

table {
	padding-left: 80px;
}
</style>
</head>
<body>
	<%
session = request.getSession(false);
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setDateHeader("Expires", 0);
response.setHeader("Pragma", "no-cache");
String userName = (String) session.getAttribute("user");
if (userName == null || userName == "") {
	response.sendRedirect("login.jsp?val=You are successfully logged out");
}
%>
<div class="navbar">
	<img src="logo.png" width="200px" height="100px"> <strong>
		<a class="active" href="logout.jsp">LOGOUT</a> 
		<button class="dropbtn">
				<strong>PERFORMANCE REVIEW</strong> <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="assignPerformanceReview.jsp">ADD</a>
				<a href="viewReviewEmp.jsp">VIEW/UPDATE</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				<strong>EMPLOYEE</strong> <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="employeeAdd.jsp">ADD EMPLOYEE</a> <a
					href="employeeView.jsp">VIEW/UPDATE/DELETE</a>

			</div>
		</div>
	</strong>
</div>
<div class="back">
	<div class="employee">
		<%
		Integer eno = Integer.parseInt(request.getParameter("eno"));
		String ename = request.getParameter("ename");
		String eusername = request.getParameter("eusername");
		String epassword = request.getParameter("epassword");
		String eaddress = request.getParameter("eaddress");
		String emobile = request.getParameter("emobile");
		String eemail = request.getParameter("eemail");
		String erole = request.getParameter("erole");
	%>
	<form method="get" name="employeepage"
		action="employeeUpdateAction.jsp">
		<h1>UPDATE EMPLOYEE DETAILS</h1>
		<table>

			<tr>
				<td>Employee Number:</td>
				<td><input type="text" name="num" required="" value=<%=eno%>></td>
			</tr>
			<tr>
				<td>Employee name</td>
				<td><input type="text" name="name" required=""
					value=<%=ename%>></td>
			</tr>
			<tr>
				<td>User name</td>
				<td><input type="text" name="username" required=""
					value=<%=eusername%>></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" required=""
					value=<%=epassword%>></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="textarea" name="address" required=""
					value=<%=eaddress%>></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="number" name="mobile" required=""
					pattern="0-9{10}" value=<%=emobile%>></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" required=""
					value=<%=eemail%>></td>
			</tr>
			<tr>
				<td>Role</td>
				<td><input type="text" name="role" required=""
					value=<%=erole%>></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="UPDATE" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
