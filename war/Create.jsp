<html>
<head>
<title>Creating a Contact</title>
</head>
<style type="text/css">
.container input {
	width: 20%;
	height: 27px;
}

form {
	align: center;
}
</style>
<form action="index.jsp" align=right>
	<input type="submit" value="Home">
</form>

<body align="center">

	<h1 align=center>Enter Your Details Here</h1>
	<h4>
		<div class="container">
			<form action="controller" method="post">
				<%
					int count = ((Integer) session.getAttribute("count")) + 1;
					session.setAttribute("count", count);
				%>
				<label>Id </label> <input type="number" name="id" required /><br>
				<br> <label>Name</label> <input type="text" name="name"
					required /><br>
				<br> <label>Age </label> <input type="number" name="age"
					required /> (Age should be within 14-99)<br>
				<br> <label>DOB </label><input type="date" name="dob" required /><br>
				<br> <label>Phone</label> <input type="number" name="ph"
					required /><br> <br>
				<label>Email </label><input type="email" name="email" required /><br>
				<br> <label>Address</label> <input type="text" name="adr"
					required /><br> <br>
				<input type="submit">

			</form>

		</div>
	</h4>
</body>

</html>
