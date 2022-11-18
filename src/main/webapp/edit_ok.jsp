<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.MemberDAO"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.example.bean.MemberVO" />
<jsp:setProperty property="*" name="u"/>

<%
	MemberDAO memberDAO = new MemberDAO();
	int i=memberDAO.updateMember(u);
	response.sendRedirect("posts.jsp");
%>