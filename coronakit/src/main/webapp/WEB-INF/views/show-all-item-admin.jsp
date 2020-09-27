<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<br>
<table border='1.5' width='600' cellpadding='1' cellspacing='1'>
                        <tr>
                            <th>Id</th>
                            <th>Product Name</th>
                            <th>Cost</th>
                            <th>Product Description</th>
                        </tr>
                        <core:forEach var="product" items="${products}">
                            <tr>
                                <td>${product.id}</td>
                                <td>${product.productName}</td>
                                <td>${product.cost}</td>
                                 <td>${product.productDescription}</td>
                                <td>
                                   <a href="${pageContext.request.contextPath}/admin/product-delete/${product.id}">Delete</a>
                                 </td>                    
                            </tr>
                        </core:forEach>
                    </table>
<br>
<a href="${pageContext.request.contextPath}/admin/product-entry">Add New Item</a>
<jsp:include page="footer.jsp"/>
</body>
</html>