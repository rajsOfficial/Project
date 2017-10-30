<html>
<head>
<title>Edit Page</title></head><style type="text/css">

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

<%@page import="java.util.*" %>
<%@page import="com.Contact.BeanClass" %>
<%@ page buffer="10kb" autoFlush="false" %>


<% 
int id=Integer.parseInt(request.getParameter("S1"));
BeanClass obj=(BeanClass) session.getAttribute("editobj");
 HashMap<Integer,BeanClass> hs = (HashMap<Integer,BeanClass>) session.getAttribute("map"); 
	%>
	<% if(hs.containsKey(id)){ %>
	<body align="center">
	<h1 align=center>Enter Your Details Here to edit</h1>
	<h4>
		<div class="container">
			<form action="controller" method="get" >
			<label>Name</label> <input type="text" name="name1" value=<%=hs.get(id).getName() %> ><br><br>
				<label>Age </label> <input type="number" name="age1" value=<%= hs.get(id).getAge() %> > (Age should be within 14-99)<br><br>
				<label>DOB </label><input type="date" name="dob1"  value=<%= hs.get(id).getDob() %> ><br><br>
				 <label>Phone</label>	<input type="number" name="ph1" value=<%= hs.get(id).getPh() %> ><br> <br>
				 <label>Email</label><input type="email" name="email1" value=<%= hs.get(id).getEmail() %>><br><br> 
				 <label>Address</label><input type="text" name="addr1" value=<%= hs.get(id).getAddr() %>><br> <br>
				 
				 <%

					 /* hs.replace(id, hs.get(id));
					session.setAttribute("emap", hs); */
					session.setAttribute("num", id);
	
					%>
				 <input type="submit">
			</form>
		</div>
	</h4> <% }
	else{
		out.print("Given ID not present");
		request.getRequestDispatcher("Edit.jsp").forward(request, response);
	}
	%>
</body>
</html>
