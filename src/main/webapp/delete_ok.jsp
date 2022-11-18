<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.example.dao.MemberDAO, com.example.bean.MemberVO"%>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		MemberVO u = new MemberVO();
		u.setSid(id);
		MemberDAO boardDAO = new MemberDAO();
		boardDAO.deleteMember(u);
	}
	response.sendRedirect("posts.jsp");
%>