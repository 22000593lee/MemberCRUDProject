<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.dao.MemberDAO, com.example.bean.MemberVO,java.util.*" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>free board</title>
	<link rel="stylesheet" href="member.css">
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete_ok.jsp?id=' + id;
	}
</script>
</head>
<body>
<h1>Members</h1>
<%
	MemberDAO memberDAO = new MemberDAO();
	List<MemberVO> list = memberDAO.getList();
	request.setAttribute("list",list);
%>
<table id="list" width="90%">
<tr>
	<th>No</th>
	<th>UserID</th>
	<th>User Name</th>
	<th>Email</th>
	<th>Photo</th>
	<th>Detail</th>
	<th>Registered Date</th>
	<th><a href="addform.jsp">Add New Post</a></th>
</tr>
<c:forEach items="${list}" var="u" varStatus="status">
	<tr>
		<td>${fn:length(list)-status.index}</td>

		<td>${u.getUserid()}</td>
		<td>${u.getUsername()}</td>
		<td>${u.getEmail()}</td>
		<td><c:if test="${u.getPhoto() ne ''}"><br />
			<img src="${pageContext.request.contextPath }/upload/${u.getPhoto()}" alt="..." width="100px" height="100px" class="img-thumbnail"></c:if></td>

		<td>${u.getDetail()}</td>
		<td>${u.getRegdate()}</td>
		<td>
			<a href="editform.jsp?id=${u.getSid()}">Edit</a>
			<a href="javascript:delete_ok('${u.getSid()}')">Delete</a>
		</td>
	</tr>
</c:forEach>
</table>

</body>
</html>