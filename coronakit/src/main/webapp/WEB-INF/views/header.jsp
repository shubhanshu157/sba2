<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<body>
<header>
<p>This is from header</p>
<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST" cssClass="logoutbut">
<button value="Logout">Logout</button>
</spring-form:form>
<br>
</header>
</body>
</html>