<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<%@include file="all_component/allcss.jsp"%>
<link href="stylesheet" href="css/style.css">
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color ">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5 md-6">
					<div class="card-header text-center text-white bg-custom">
						<i class="ri-user-3-fill fa-2x"></i>
						<h4>Registration</h4>
					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-success");
					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>Login<a href="login.jsp">Click Here</a></div>
					<%
					session.removeAttribute("reg-success");
					}
					%>


					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");
					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=FailedMsg %></div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>
					<div class="card-body">
						<form method="post" action="UserServlet">
							<div class="form-group">
								<label for="exampleInputName">Enter Full name</label> <input
									type="text" class="form-control" id="exampleInputName"
									name="fname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail"> <small
									id="emailHelp" class="form-text text-muted">We'll never
									share your email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="uPassword">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>