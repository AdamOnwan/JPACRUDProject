<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WWE Inductee</title>
</head>
<body>
<body style='background-color: #FFFF99;'>
<div>
  <h5>${inductee.id } ${inductee.name} (${inductee.birthday})</h5>
  <p>Name: ${inductee.name }</p>
  <p>crowdName: ${inductee.crowdName }</p>
  <p>realName: ${inductee.realName }</p>
  <p>Birthday: ${inductee.birthday }</p>
  <p>Description: ${inductee.description}</p>
  <p>Finisher: ${inductee.finisher}</p>
  <p>Birthplace: ${inductee.birthplace }</p>
</div>
<form action="delete.do" method="POST">
	<button type="submit" formaction="removeInductee.do" name="iid"
			value="${inductee.id}">Remove Inductee</button>
</form>
<form action="update.do" method="POST">
	<button type="submit" formaction="updateInductee.do" name="updateId"
			value="${inductee.id}">Update Inductee</button>
</form>
<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
</body>
</html>