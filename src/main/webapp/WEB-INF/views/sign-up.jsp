<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<%@ include file="parts/header.jsp" %>
<title>Login Page</title>
</head>



<body class="bg-secondary">


<div class="container">
	<h1 class="text-info text-center font-weight-bold">Sign-Up Page</h1>
	<hr>
	<form:form action="${pageContext.request.contextPath}/signUpProccess" method="post" modelAttribute="user">
		<table class="table table-bordered table-dark">
			<tbody>
				<tr>
					<td scope="row"><label>Username:</label></td>
					<td><form:input path="username"/></td>
					<td><form:errors path="username"/>
					<c:if test="${usernameExist}">username already exist please choose another</c:if>
					</td>
				</tr>
				
				<tr>
					<td scope="row"><label>Password:</label></td>
					<td><form:input path="password"/></td>
					<td><form:errors path="password"/></td>
				</tr>
				
				<tr>
					<td scope="row"></td>
					<td><input type="submit" value="Sign Up"></td>
				</tr>
			</tbody>	
		</table>
	</form:form>
	
</div>
</body>
</html>