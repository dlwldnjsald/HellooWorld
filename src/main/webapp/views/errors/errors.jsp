<%@ page language="java" 
		contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>

<%@ page isErrorPage="true" %>
<%-- isErrorPage = "true" 설정하면 이 페이지 내에서 어떤 예외정보가 발생했는가 확인 가능
	exception 내장 객체를 사용할 수있다.
	
	<%-- : jsp의 주석// html주석은 <!-- 였다 //   --%>
	
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>ERROR PAGE</title>
	</head>
	
	<body>
		<h1>뭔가 잘못되었어요!</h1>
		<p>ERROR CODE: <%= response.getStatus() %></p>
		<p>Exception Type: <%= exception.getClass().getSimpleName() %></p>
		<p>Message: <%= exception.getMessage() %></p>
	</body>
	
</html>