<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.List"%>
<%@page import="cn.guddqs.newyear.LuckService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/json;charset=utf-8");

	String ip = request.getRemoteAddr();

	System.out.println(ip);
	List<String> iplist = (List<String>) application.getAttribute("iplist");
	System.out.println(iplist);
	if (iplist == null) {
		iplist = new ArrayList();
		iplist.add(ip);
		Integer num = new LuckService().getLuckNum();
		if (num != null) {
			out.print("{\"num\":" + num + "}");
			session.setAttribute("lucknum", num);
		}
	} else {
		if (iplist.contains(ip)) {
			out.print("{\"flag\":" + 7 + "}");
		} else {
			iplist.add(ip);
			Integer num = new LuckService().getLuckNum();
			if (num != null) {
				out.print("{\"num\":" + num + "}");
				session.setAttribute("lucknum", num);
			}
		}
	}
	application.setAttribute("iplist", iplist);
%>