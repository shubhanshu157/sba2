<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Items</title>
<style type="text/css">
.error{
	color:red;
}
</style>
</head>
<body>

<jsp:include page="header.jsp"/>


<h3>Add New Items</h3>
<spring:form action="${pageContext.request.contextPath}/admin/product-save" method="POST" modelAttribute="product">
<div>
	<div>
		<spring:label path="productName">Product Name: </spring:label>
		<spring:input name="fname" path="productName"/>
	</div>
	<div>
		<spring:errors path="productName" cssClass="error"/>
	</div>
	<br>
	<div>
		<spring:label path="cost">Product Cost: </spring:label>
		<spring:input path="cost"/>
	</div>
	<div>
		<spring:errors path="cost" cssClass="error"/>
	</div>
	<br>
	<div>
		<spring:label path="productDescription">Product Description: </spring:label>
	</div>
	<div>
	<spring:textarea cols="35" rows="10" path="productDescription"/>
		<spring:errors path="productDescription" cssClass="error"/>
	</div>
		<br>
	<div>

		<input type="submit" value="Submit"/>
	</div>
</div>
</spring:form>
<jsp:include page="footer.jsp"/>

</body>
</html>