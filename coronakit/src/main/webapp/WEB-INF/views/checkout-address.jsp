<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CheckOut</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<h3>Below is the summary of your order</h3>

<table border='1.5' width='600' cellpadding='1' cellspacing='1'>
                        <tr>
                            <th>Id</th>
                            <th>Product Name</th>
                            <th>Cost</th>
                            <th>Product Description</th>
                        </tr>
                        <tbody>
                      <core:forEach var="product" items="${products}">
                            <tr>
                            	<td>${product.productName}</td>
                                <td>${product.cost}</td>
                            </tr>
                            
                        </core:forEach>  
                             <tr>
                                <td>${detail.id}</td>
                             	<td><c:out value="${detail.amount}"/></td>
                                <td>
                                   <a href="${pageContext.request.contextPath}/user/delete/{id}">Delete</a>                              
                                 </td>                    
                            <tr>
                            
   </tbody>                
</table>


<h3>Please enter your Address:</h3>
<spring:form action="${pageContext.request.contextPath}/user/finalize" method="POST" modelAttribute="ckit">
<div>
	<div>
		<spring:label path="deliveryAddress">Address: </spring:label>
		<spring:textarea path="deliveryAddress"/>
	</div>
	<br>
	<div>

		<input type="submit" value="Submit"/>
	</div>
</div>
</spring:form>

<a href="${pageContext.request.contextPath}/user/show-kit">Back</a>

<jsp:include page="footer.jsp"/>
</body>
</html>