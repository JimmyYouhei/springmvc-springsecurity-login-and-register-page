<%@ include file="parts/ifLoginFail.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="parts/header.jsp" %>
<title>User Counter</title>
</head>
<body class="bg-secondary">
	<%@ include file = "parts/navigation.jsp"%>
	
	<div class = "container">
	<h1 class="text-info text-center font-weight-bold">Here is the users Who logged in</h1>
	<hr>
	
			<table class="table table-bordered table-dark">
				<tbody>
				<tr>
					
					<td scope="row"><label>Usernames:</label></td>
					<td><c:out value="${usersLoggedIn }"></c:out> </td>
				</tr>
				
				<tr>
					<td scope="row"><label>total Logged In Times:</label></td>
					<td><c:out value="${totalLoggedIn}"></c:out></td>
				</tr>
			</tbody>	
		</table>
	</div>
	<%@ include file ="parts/footer.jsp" %>
</body>
</html>