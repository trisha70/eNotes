<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
   UserDetails user1=(UserDetails)session.getAttribute("userD");
   if(user1==null){
	   response.sendRedirect("login.jsp");
	   session.setAttribute("Login-error","please login to add Notes..");
   }
%>	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="all_component/navbar.jsp"%>
		<h1 class="text-center mt-3 font-weight-bold">Add your Notes</h1>
		<div class="container">
		 <div class="row">
			<div class="col-md-12">
				<form action="AddNotesServlet" method="post">
					<div class="form-group">
					
					<%
					   UserDetails us=(UserDetails)session.getAttribute("userD");
					   if(us!=null)
					   {%>
						    <input type="hidden" value="<%=us.getId()%>" name="uid"> 
					   <%}
					%>

					
					
					
						<label for="title">Enter Title</label>
						 <input type="text" class="form-control" id="title"
							aria-describedby="emailHelp" placeholder="Enter title  here" name="title" required="required">
					</div>
					<div class="form-group">
					    <label for="content">Drop your Content</label>
						<textarea rows="9" cols="" class="form-control" placeholder="enter your content" id="content" name="content" required="required"></textarea>

					</div>
					<div class="container text-center">
					   <button type="submit" class="btn btn-primary mb-3">Add</button>
					</div>
				</form>
			</div>
		</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>