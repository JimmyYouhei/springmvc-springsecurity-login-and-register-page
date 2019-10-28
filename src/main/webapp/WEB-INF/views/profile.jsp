<%@ include file="parts/head.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="parts/header.jsp" %>
<title>User Profile</title>
</head>
<body class="bg-secondary">
	<%@ include file = "parts/navigation.jsp"%>
	
	<div class = "container">
	<h1 class="text-info text-center font-weight-bold">Here is the user Profile</h1>
	<hr>
	
			<table class="table table-bordered table-dark">
				<tbody>
				<tr>
					<td scope="row"><label>Username:</label></td>
					<td><c:out value="${username}"></c:out></td>
				</tr>
				
				<tr>
					<td scope="row"><label>Password:</label></td>
					<td><c:out value="${password}"></c:out></td>
				</tr>
				
				<tr>
					<td scope="row"><label>Logged In Times:</label></td>
					<td><c:out value="${ logInTimes}"></c:out></td>
				</tr>
			</tbody>	
		</table>
	</div>
	<%@ include file ="parts/footer.jsp" %>
</body>
</html>