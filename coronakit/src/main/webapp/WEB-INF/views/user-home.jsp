<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>This is User Dashboard</title>
</head>
<body>

<jsp:include page="header.jsp"/>

<h1 >Welcome <security:authentication property="principal.username"/></h1>
<br>
<div>
<a href="${pageContext.request.contextPath}/user/show-list">Show Products</a>
</div>
<br><br>
<div>
<a href="${pageContext.request.contextPath}/user/show-kit">Show Cart</a>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>