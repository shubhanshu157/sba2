<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome!!</title>
</head>
<body>
<section>
<br>
<h2>Hello <security:authentication property="principal.username"/></h2>

<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>
<br>
</section>
<br>
<section>
<br>
<h1>Welcome to Corona Kit Prevention Online Store Dashboard!!!</h1>
<security:authorize access="hasRole('ADMIN')">

	<a href="${pageContext.request.contextPath}/admin/home">ADMIN DASHBOARD</a>
</security:authorize>

<security:authorize access="hasRole('USER')">
	<a href="${pageContext.request.contextPath}/user/home">USER DASHBOARD</a>
</security:authorize>
<br>
</section>
</body>
</html>