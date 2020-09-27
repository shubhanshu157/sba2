<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Summary</title>
</head>
<body>

<jsp:include page="header.jsp"/>

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

<h2>Address: ${ckit.deliveryAddress}</h2>

<jsp:include page="footer.jsp"/>
</body>
</html>