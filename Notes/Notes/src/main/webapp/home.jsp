<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
   UserDetails user2=(UserDetails)session.getAttribute("userD");
   if(user2==null){
	   response.sendRedirect("login.jsp");
	   session.setAttribute("Login-error","please login to add Notes..");
   }
%>	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>
	<%@include file="all_component/navbar.jsp" %>
	<div class="container-fluid">
	<div class="card mt-3">
	<div class="card-body text-center">
	<img src="img/addnote.jpg" class="img-fluid mx-auto" style="max-width:385px;">
	<h1>Add your Notes here!</h1>
	<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
	</div>
	</div>
	</div>
	
	
	<%@include file="all_component/footer.jsp" %>
</body>
</html>