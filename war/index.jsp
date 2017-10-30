<!DOCTYPE HTML>

<html>
<head>
<title>Contact Book</title>
</head>
<style>
form {
	padding: 20px;
}
</style>
<body align="center">
	<h2>Please Select a Option</h2>
	<br>
	<br>
	<br>
	<br>
	<%
		int count = (Integer) session.getAttribute("count");
		if (count == 0) {
	%>
	<form action="Create.jsp" method="get">
		<input type="submit" value="Create">
	</form>

	<%
		} else {
	%>
	<form action="Create.jsp" method="get">
		<input type="submit" value="Create">
	</form>

	<form action="Edit.jsp" method="get">
		<input type="submit" value="Edit">
	</form>

	<form action="Show.jsp" method="get">
		<input type="submit" value="Show">
	</form>
	<% } %>

</body>
</html>