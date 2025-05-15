<%@ page import='jakarta.servlet.*' %>
<%@ page import='jakarta.servlet.http.*' %>
<%@ page import='java.io.*' %>
<%@ page import='java.sql.*' %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@include file="all_component/allcss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/paper1.jpg");
	background-size:100% 100%;
	background-repeat: no-repeat;
	background-position: center;
	width: 100%;
	height: 80vh;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div>
		<div class="container-fluid back-img">
			<div class="text-white text-center">
				<h1 style="padding: 50px 0px 20px">
					E-Notes Save your notes
				</h1>
				<a  href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-3" type="submit"
					style="color: #31511E; border-radius: 10px"><i
					class="ri-lock-2-line"></i>Login</a> <a href="register.jsp"
					class="btn btn-light my-2 my-sm-0" type="submit"
					style="color: #31511E; border-radius: 10px"><i
					class="ri-user-line"></i>Register</a>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>