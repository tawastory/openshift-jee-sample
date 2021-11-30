<%@ page language="java" contentType="text/html; charset=EUC-KR"
        pageEncoding="EUC-KR"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>
<%
        String RsessionId = request.getRequestedSessionId();
        String sessionId = session.getId();
        boolean isNew = session.isNew();
        long creationTime = session.getCreationTime();
        long lastAccessedTime = session.getLastAccessedTime();
        int maxInactiveInterval = session.getMaxInactiveInterval();
        Enumeration e = session.getAttributeNames();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Session Test</title>
</head>
<body>
	<form action="/servletMain/hello" method="post">
	
	<input type="text" name="name"> <br>
	<input type="submit" value="전송">

</body>
</html>
