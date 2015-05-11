<%@page import="com.sds.icto.emaillist.dao.EmailListDao"%>
<%@page import="com.sds.icto.emaillist.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//이메일을 등록합니다.
	String fn=request.getParameter("fn");
	String ln=request.getParameter("ln");
	String email=request.getParameter("email");
	EmailListVo vo=new EmailListVo();
	vo.setFirstName(fn);
	vo.setLastName(ln);
	vo.setEmail(email);
	EmailListDao dao=new EmailListDao();
	dao.insert(vo);
	response.sendRedirect("/emaillist");
%>