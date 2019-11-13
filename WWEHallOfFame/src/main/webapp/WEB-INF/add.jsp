<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Inductee</title>
</head>
<body>

<form action="add.do" method="POST"  modelAttribute="inductee">
	<table>
		<tr><td><label>name: ${inductee.name } </label></td>
		<td> <input type="text" name="name"></td></tr>
		<tr><td><label>crowdName: ${inductee.crowdName } </label></td>
		<td> <input type="text" name="crowdName" ></td></tr>
		<tr><td><label>realName: ${inductee.realName } </label></td>
		<td><input type="text" name="realName" ></td></tr>
		<tr><td><label>inducted: ${inductee.inducted } </label></td>
		<td><input type="number" step="1" name="inducted"></td></tr>
		<tr><td><label> description: ${inductee.description } </label></td>
		<td><input type="text" name="description" ></td></tr>
		<tr><td><label>finisher: ${inductee.finisher } </label></td>
		<td><input type="text" name="finisher" ></td></tr>
		<tr><td><label>birthplace: ${inductee.birthplace } </label></td>
		<td><input type="text" name="birthplace" ></td></tr>
		<tr><td><input type="submit" value="Add Inductee"></td></tr>
	</table>
</form>
<a href="/index.jsp" class="btn btn-secondary" role="button">Back to Home</a>
</body>
</html>
