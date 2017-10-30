<html>
<head>
<title>Show Contact</title></head>
<style>
table{
    border: 3px solid black;
    border-collapse: collapse;
    border-spacing:25px;
}
 th, td{
 	 border: 1px solid black;
 	padding:10px;
 	text-align:center;
 }
</style>
<body align="center">
<%@page import="java.util.*" %>
<%@page import="com.Contact.BeanClass" %>
<form action="index.jsp" align=right> 
<input type="submit" value="Home"> 
</form>

<%  HashMap<Integer, BeanClass> sh=(HashMap<Integer, BeanClass>) session.getAttribute("map"); %>
	
<% int i=1;
for(Integer key : sh.keySet()){ %>
<table>
<% out.print(" Value   :<h3>"+i+"</h3>");%>
<tr>
	<th><h3> Type</h3>
	<th><h3> Description</h3></th>
</tr>
<tr>
	<td> <% out.print("Id"); %></td>
	<td><% out.print(key); %> </td>
</tr>

<tr>
	<td> <% out.print("Name"); %></td>
	<td><% out.print(sh.get(key).getName()); %> </td>
</tr>

<tr>
	<td> <% out.print("Age"); %></td>
	<td><% out.print(sh.get(key).getAge()); %> </td>
</tr>

<tr>
	<td> <% out.print("Dob"); %></td>
	<td><% out.print(sh.get(key).getDob()); %> </td>
</tr>

<tr>
	<td> <% out.print("Phone"); %></td>
	<td><% out.print(sh.get(key).getPh()); %> </td>
</tr>

<tr>
	<td> <% out.print("Address"); %></td>
	<td><% out.print(sh.get(key).getAddr()); %> </td>
</tr>
	<br>
	<br>
	<br>
	</table>
<% i++;}

%> 
</body>


</html>