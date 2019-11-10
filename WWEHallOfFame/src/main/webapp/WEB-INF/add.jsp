<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Hero</title>
</head>
<body>
	<div class="container">
			<h1>New WWE Hall of Fame Inductee</h1>
		</div>
	<form:form action="add.do" method="POST">
		<table><tr>
		<form:label path="name">Name: </form:label>
		<form:input path="name" required="required"/>
		<form:errors path="name" />
		</tr>
		<tr>
		<form:label path="crowdName">Crowd Name:</form:label>
		<form:input path="crowdName" value="Enter crowdName here"/>
		<form:errors path="crowdName" />
		</tr>
		<tr>
		<form:label path="realName">Real Name:</form:label>
		<form:input path="realName" value="Real Name"/>
		<form:errors path="realName" />
		</tr>
		<tr>
		<form:label path="inducted">Inducted:</form:label>
		<form:input path="inducted" value="Enter date here"/>
		<form:errors path="inducted" />
		</tr>
		<tr>
		<form:label path="birthday">Birthday:</form:label>
		<form:input path="birthday" value="Enter Birthday here"/>
		<form:errors path="birthday" />
		</tr>
		<tr>
		<form:label path="description">Description:</form:label>
		<form:input path="description" value="Enter description here"/>
		<form:errors path="description" />
		</tr>
		<tr>
		<form:label path="finisher">Finisher:</form:label>
		<form:input path="finisher" value="Enter finisher here"/>
		<form:errors path="finisher" />
		</tr>
		<tr>
		<form:label path="birthplace">BirthPlace:</form:label>
		<form:input path="birthplace" value="Enter birthplace here"/>
		<form:errors path="birthplace" />
		</tr>
		</table>
		<div class="container">
		<input type="submit" id = "addNewWWEHOFInductee"  class="btn btn-outline-light" value="newWWEHOFInductee" />
		</div>
	</form:form>
	<a href="index.jsp" class="btn btn-secondary" role="button">Back
			to Home</a>
</body>
</html>


