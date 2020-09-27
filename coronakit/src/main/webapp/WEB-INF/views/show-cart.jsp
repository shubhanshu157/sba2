<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Cart</title>



</head>
<body>
<jsp:include page="header.jsp"/>
<h2> Item Saved in Cart</h2>
<br>
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
<br>

<a href="${pageContext.request.contextPath}/user/checkout">Checkout</a>
<a href="${pageContext.request.contextPath}/user/show-list">Show List</a>

<jsp:include page="footer.jsp"/>
</body>
</html>