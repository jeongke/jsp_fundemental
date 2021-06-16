<%@page import="kr.or.kpc.dao.CustomerDao"%>
<%@ page contentType="application/json;charset=utf-8"%>
<%
	String eamil = request.getParameter("email");
	CustomerDao dao = CustomerDao.getInstance();
	boolean existed = dao.isExisted(email);
	if(existed){
%>
{"result":"fail"}
<%}else{%>
{"result":"ok"}
<%}%>