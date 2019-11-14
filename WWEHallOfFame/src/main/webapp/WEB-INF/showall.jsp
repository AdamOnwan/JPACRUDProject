<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Inductees</title>
</head>
<body>
<ul>
  <li><strong>ID:</strong>${inductee.id } <strong>Name:</strong>${inductee.name}</li>
  <li>crowdName: ${inductee.crowdName }</li>
  <li>realName: ${inductee.realName }</li>
  <li>Description: ${inductee.description}</li>
  <li>Finisher: ${inductee.finisher}</li>
  <li>Birthplace: ${inductee.birthplace }</li>
</ul>

	<table>
		<c:forEach var="inductee" items="${inductees}">
			<tr>
				<td>Inductees</td>
				<td>${inductee.name }</td>
				<td>${inductee.id }</td>
			</tr>
		</c:forEach>
	</table>
	<a href="index.do" class="btn btn-secondary" role="button" >Back to Home</a>
</body>
</html>