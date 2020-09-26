<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

</style>
</head>
<body>
	<h1>Login Here</h1>
	${SPRING_SECURITY_LAST_EXCEPTION.message}
	<form action="login"  method="post">
	<table>
		<tr>
			<td>User:</td>
			<td><input type="text" name = "username" value=''></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type ="password" name="password"/></td>
		</tr>
		<tr>
			<td><input name="submit" type="submit" value="submit"/></td>
		</tr>
	</table>
	</form>

</body>
</html>