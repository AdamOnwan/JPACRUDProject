<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles.css">
<meta charset="UTF-8">
<title>WWE Hall Of Fame Index</title>
</head>
<body>
	<form action="addInductee.do" method="GET">
		<input type="submit" value="Add Inductee" />
	</form>
	<form action="getInductee.do" method="GET">
		Inductee by ID: <input type="text" name="iid" /> <input type="submit" value="Show Inductee" />
	</form>
	<div>
	<form>
	<c:forEach var="inductee" items="${inductees }" >
	<a href="getInductee.do?iid=${inductee.id }">${inductee.name }</a> <br>
	</c:forEach>
	</form>
	</div>
	<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
</body>
</html>