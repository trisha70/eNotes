<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="stylesheet" href="css/style.css">
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>

	<%
	session.removeAttribute("user");
	%>
	<%@ include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5 md-6">
					<div class="card-header text-center text-white bg-custom">
						<i class="ri-lock-2-line fa-2x"></i>
						<h4>Login</h4>
					</div>


					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					<%
					String withoutLogin = (String) session.getAttribute("Login-error");
					if (withoutLogin != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
					<%
					session.removeAttribute("Login-error");
					}
					%>
					
					
                    <%
                       String lgMsg=(String)session.getAttribute("logoutMsg");
                       if(lgMsg!=null){%>
                    	   <div class="alert alert-success" role="alert"><%=lgMsg%></div>
                       <%
                       session.removeAttribute("logoutMsg");
                       }
                    %>
					<div class="card-body">
						<form method="post" action="loginServlet">
							<div class="form-group">
								<label for="uemail">Email address</label> <input type="email"
									class="form-control" id="uemail" name="uemail">
							</div>
							<div class="form-group">
								<label for="upassword">Password</label> <input type="password"
									class="form-control" id="upassword" name="upassword">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="all_component/footer.jsp"%>

</body>
</html>