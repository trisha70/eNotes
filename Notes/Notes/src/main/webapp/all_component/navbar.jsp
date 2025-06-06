<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<a class="navbar-brand" href="#"><i class="ri-book-open-line"></i>E-Notes</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp"><i
					class="ri-home-4-line"></i>Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item"><a class="nav-link" href="addNotes.jsp"><i
					class="ri-add-line"></i>AddNotes</a></li>
			<li class="nav-item"><a class="nav-link" href="showNotes.jsp"><i
					class="ri-search-eye-line"></i>ShowNotes</a></li>
		</ul>
		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");
		if (user != null) {
		%>
		<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-3"
			data-toggle="modal" data-target="#exampleModal" type="submit"
			style="color: #31511E; border-radius: 10px"> <i
			class="ri-account-circle-line"></i><%=user.getName()%></a> <a
			href="LogoutServlet" class="btn btn-light my-2 my-sm-0" type="submit"
			style="color: #31511E; border-radius: 10px"><i
			class="ri-logout-box-r-line"></i> Logout</a> 
			
		<div class="modal fade"
		id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<i class="ri-account-circle-line fa-3x"></i>
						<h5></h5>
						<table class="table">
							<tbody>
								<tr>
									<th>User Id</th>
									<td><%=user.getId()%></td>
								</tr>
								<tr>
									<th>Full Name</th>
									<td><%=user.getName()%></td>
								</tr>
								<tr>
									<th>Email Id</th>
									<td><%=user.getEmail()%></td>
								</tr>
							</tbody>
						</table>
						<div>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">Close</button>
						</div>
					</div>


				</div>

			</div>
		</div>
	</div>

	<%
	} else {
	%>
	<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-3"
		type="submit" style="color: #31511E; border-radius: 10px"><i
		class="ri-lock-2-line"></i>Login</a> <a href="register.jsp"
		class="btn btn-light my-2 my-sm-0" type="submit"
		style="color: #31511E; border-radius: 10px"><i
		class="ri-user-line"></i>Register</a>
	<%
	}
	%>

	</div>
</nav>