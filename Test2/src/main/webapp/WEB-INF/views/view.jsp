<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		List list = (List)request.getAttribute("result");
				
		for(int i=0; i<list.size(); i++){
			out.println(i + " :  " + list.get(i) + "<br/>");
		}
	%>
	
	
</body>
</html>