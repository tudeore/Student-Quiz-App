<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: graytext;
}
</style>
</head>
<body>

<h1> Exam Result</h1>
<table>
	<tr>
		<td>Total Marks</td>
		<td>${result.get(0) }%</td>
	</tr>
	<tr>
		<td>Remark</td>
		<td>${result.get(3)}</td>
	</tr>
	<tr>
		<td>Correct Answer</td>
		<td>${result.get(1) }</td>
	</tr>
	<tr>
		<td>Incorrect Answer</td>
		<td>${result.get(2) }</td>
	</tr>
</table><br>
<a href="/">Back To Home</a>
</body>
</html>