<%@ page import="com.example.bean.MemberVO" %>
<%@ page import="com.example.dao.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: leeggang
  Date: 2022/11/18
  Time: 3:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    MemberDAO memberDAO = new MemberDAO();

  %>
  <td><c:if test="${u.getPhoto() ne ''}"><br />
  <img src="${pageContext.request.contextPath }/upload/${u.getPhoto()}" class="photo"></c:if></td>
</body>
</html>
