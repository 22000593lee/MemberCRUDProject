<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.example.dao.MemberDAO, com.example.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Form</title>
	<link rel="stylesheet" href="member.css">
</head>
<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id=request.getParameter("id");
	MemberVO u=memberDAO.getMember(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="sid" value="<%=u.getSid() %>"/>
<table>
	<tr><td>User ID:</td><td><input type="text" name="userid" value="<%= u.getUserid()%>"/></td></tr>
	<tr><td>User name:</td><td><input type="text" name="username" value="<%= u.getUsername()%>"/></td></tr>
	<tr><td>Email address:</td><td><input type="text" name="email" value="<%= u.getEmail()%>"/></td></tr>
	<tr><td>Photo:</td><td><input type="file" name="photo" value="<%= u.getPhoto()%>"/></td></tr>
	<tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail" value="<%= u.getDetail()%>"></textarea></td></tr>

<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>