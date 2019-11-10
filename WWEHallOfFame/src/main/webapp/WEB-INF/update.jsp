<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Films</title>
</head>
<body >
	<c:forEach var="inductee" items="${inductees}">
		<h1>${inductee.name}</h1>
		<table>
			<tr>
				<td>Inductee</td>
				<td>${inductee.id}</td>
			</tr>
			<tr>
				<td>Inductee Name</td>
				<td>${inductee.name}</td>
			</tr>
			<tr>
				<td>Inductee CrowdName</td>
				<td>${inductee.crowdName}</td>
			</tr>
			<tr>
				<td>Inductee Real Name</td>
				<td>${inductee.realName}</td>
			</tr>
			<tr>
				<td>Inductee Inducted</td>
				<td>${inductee.inducted }</td>
			</tr>
			<tr>
				<td>Inductee Birthday</td>
				<td>${inductee.birthday}</td>
			</tr>
			<tr>
				<td>Inductee Description</td>
				<td>${inductee.description}</td>
			</tr>
			<tr>
				<td>Inductee Finisher</td>
				<td>${inductee.finisher}</td>
			</tr>
			<tr>
				<td>Inductee Birthplace</td>
				<td>${inductee.birthplace}</td>
			</tr>
		</table>
	<br>
	<form:form action="delete.do" method="GET" modelAttribute="inductee">
		<form:label path="id">Delete: ${inductee.name }</form:label>
		<form:hidden path="id" />
		<form:errors path="id" />
		<input type="submit" value="Delete Inductee" />
	</form:form>
	<form:form action="update.do" method="GET" modelAttribute="inductee">
	<div>
<table><tr>
		<td><form:label path="name" value="${inductee.name}">Title(String):</form:label></td>
		<td><form:input path="name" value="${inductee.name}"/>
		<form:errors path="name" value="${inductee.name}" /></td>
		</tr>
		<tr>
		<td><form:label path="crowdName" value="${inductee.description}">Description(String):</form:label></td>
		<td><form:input path="description" value="${inductee.description}"/>
		<form:errors path="description" value="${inductee.description}"/></td>
		</tr>
		<tr>
		<td><form:label path="releaseYear" value="${inductee.releaseYear}">Release Year(Integer):</form:label></td>
		<td><form:input path="releaseYear" value="${inductee.releaseYear}"/>
		<form:errors path="releaseYear" value="${inductee.releaseYear}"/></td>
		</tr>
		<tr>
		<td><form:label path="rentDuration" value="${inductee.rentDuration}">Rent Duration(Integer):</form:label></td>
		<td><form:input path="rentDuration" value="${inductee.rentDuration}"/>
		<form:errors path="rentDuration" value="${inductee.rentDuration}"/></td>
		</tr>
		<tr>
		<td><form:label path="rentRate" value="${inductee.rentRate}">Rent Rate(Double):</form:label></td>
		<td><form:input path="rentRate" value="${inductee.rentRate}"/>
		<form:errors path="rentRate" value="${inductee.rentRate}"/></td>
		</tr>
		<tr>
		<td><form:label path="length" value="${inductee.length}">Length(Integer):</form:label></td>
		<td><form:input path="length" value="${inductee.length}"/>
		<form:errors path="length" value="${inductee.length}"/></td>
		</tr>
		<tr>
		<td><form:label path="replaceCost" value="${inductee.replaceCost}">Replace Cost(Double):</form:label></td>
		<td><form:input path="replaceCost" value="${inductee.replaceCost}"/>
		<form:errors path="replaceCost" value="${inductee.replaceCost}"/></td>
		</tr>
		<tr>
		<td><form:label path="specialFeat" value="${inductee.specialFeat}">Special Features(String):</form:label></td>
		<td><form:input path="specialFeat" value="${inductee.specialFeat}"/>
		<form:errors path="specialFeat" value="${inductee.specialFeat}"/></td>
		</tr>
		<tr>
		<td><input type="submit" value="Update Film" />Update: ${film.title }</td>
		</tr>
		</table>
		<br>
	</form:form>
	</div>
	</c:forEach>
	<a href="index.html" class="btn btn-secondary" role="button">Back to Home</a>
</body>
</html>