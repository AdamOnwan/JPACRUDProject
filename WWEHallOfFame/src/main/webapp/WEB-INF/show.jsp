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
  <li><strong>ID:</strong>${inductee.id } <strong>Name:</strong>${inductee.name}</li>
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
		<tr><td><label>UPDATE SECTION </label></td>
		<td><input type="checkbox" hidden="true" checked="true" value="${inductee.id}" name="id"></td></tr>
		<tr><td><label>name: ${inductee.name } </label></td>
		<td> <input type="text" name="name" value="${inductee.name}"></td></tr>
		<tr><td><label>crowdName: ${inductee.crowdName} </label></td>
		<td> <input type="text" name="crowdName" value="${inductee.crowdName}"></td></tr>
		<tr><td><label>realName: ${inductee.realName } </label></td>
		<td><input type="text" name="realName" value="${inductee.realName}"></td></tr>
		<tr><td><label>inducted: ${inductee.inducted } </label></td>
		<td><input type="number" min="1900" step="1" name="inducted" value="${inductee.inducted}"></td></tr>
		<tr><td><label> description: ${inductee.description } </label></td>
		<td><input type="text" name="description" value="${inductee.description}"></td></tr>
		<tr><td><label>finisher: ${inductee.finisher } </label></td>
		<td><input type="text" name="finisher" value="${inductee.finisher}"></td></tr>
		<tr><td><label>birthplace: ${inductee.birthplace } </label></td>
		<td><input type="text" name="birthplace" value="${inductee.birthplace}"></td></tr>
		<tr><td><input type="submit" value="Update Inductee" ></td></tr>
		</table>
</form>

<a href="/" class="btn btn-secondary" role="button">Back to Home</a>
</body>
</html>