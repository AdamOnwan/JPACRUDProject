<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Inductee</title>
</head>
<body>

<form action="add.do" method="POST" modelAttribute="inductee">
		<label>name: </label> <input type="text" name="name"> <br /> 
		<label>crowdName: </label> <input type="text" name="crowdName"> <br /> 
		<label>realName: </label> <input type="text" name="realName"> <br /> 
		<label>inducted: </label> <input type="number" min="1900" step="1" name="inducted"> <br /> 
		<label> birthday: </label> <input type="date" name="birthday"> <br /> 
		<label> description: </label> <input type="text" name="description"> <br /> 
		<label>finisher: </label> <input type="text" name="finisher"> <br /> 
		<label>birthplace: </label> <input type="text" name="birthplace"> <br /> 
		<input type="submit" value="Add Inductee">
</form>
<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
</body>
</html>
