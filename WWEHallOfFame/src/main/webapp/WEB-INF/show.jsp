<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WWE Inductee</title>
</head>
<body>
<body style='background-color: #FFFF99;'>
<div>
<ul>
  <li><h5>${inductee.id } ${inductee.name})</h5></li>
  <li>crowdName: ${inductee.crowdName }</li>
  <li>realName: ${inductee.realName }</li>
  <li>Description: ${inductee.description}</li>
  <li>Finisher: ${inductee.finisher}</li>
  <li>Birthplace: ${inductee.birthplace }</li>
</ul>
</div>
<form action="delete.do" method="POST">
	<button type="submit" formaction="removeInductee.do" name="iid"
			value="${inductee.id}">Remove Inductee</button>
</form>

<form action="update.do" method="POST" modelAttribute="foundInductee">
<table>
		<tr><td><label>Check to Update: ${inductee.id } </label></td>
		<td><input type="checkbox" checked="true" value="${inductee.id}" name="id"></td></tr>
		<tr><td><label>name: ${inductee.name } </label></td>
		<td> <input type="text" name="name"></td></tr>
		<tr><td><label>crowdName: ${inductee.crowdName } </label></td>
		<td> <input type="text" name="crowdName" ></td></tr>
		<tr><td><label>realName: ${inductee.realName } </label></td>
		<td><input type="text" name="realName" ></td></tr>
		<tr><td><label>inducted: ${inductee.inducted } </label></td>
		<td><input type="number" min="1900" step="1" name="inducted"></td></tr>
		<tr><td><label> description: ${inductee.description } </label></td>
		<td><input type="text" name="description" ></td></tr>
		<tr><td><label>finisher: ${inductee.finisher } </label></td>
		<td><input type="text" name="finisher" ></td></tr>
		<tr><td><label>birthplace: ${inductee.birthplace } </label></td>
		<td><input type="text" name="birthplace" ></td></tr>
		<tr><td><input type="submit" value="Update Inductee" ></td></tr>
		</table>
</form>

<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
</body>
</html>