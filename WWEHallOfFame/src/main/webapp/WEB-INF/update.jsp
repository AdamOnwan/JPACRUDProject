<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Inductee</title>
</head>
<body style='background-color: #FFFF99;'>

<form action="update.do" method="POST" modelAttribute="foundInductee">
		<input type="hidden" name="id" items="${inductee}">
		<label>name: ${inductee.name }</label> <input type="text" name="name">  <br /> 
		<label>crowdName: ${inductee.crowdName }</label> <input type="text" name="crowdName" > <br /> 
		<label>realName: ${inductee.realName }</label> <input type="text" name="realName" > <br /> 
		<label>inducted: ${inductee.inducted }</label> <input type="number" min="1900" step="1" name="inducted" > <br /> 
		<label> description: ${inductee.description }</label> <input type="text" name="description" > <br /> 
		<label>finisher: ${inductee.finisher }</label> <input type="text" name="finisher" > <br /> 
		<label>birthplace: ${inductee.birthplace }</label> <input type="text" name="birthplace" > <br /> 
		<input type="submit" value="Update Inductee" >
</form>
<a href="index.do" class="btn btn-secondary" role="button" >Back to Home</a>
</body>
</html>
