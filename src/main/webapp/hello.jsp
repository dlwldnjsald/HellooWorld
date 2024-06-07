<!-- "name" 매개변수를 받아서 환영 메시지를 표시하는 간단한 JSP 페이지 만들기 -->
		
	 
<!--	 아래 코드는 JSP 페이지의 속성을 지정하는 지시문   
  		 JSP 파일 내 사용되는 언어 =Java
	     콘텐츠 유형과 문자 인코딩을 설정
	     페이지의 인코딩을 UTF-8로 설정
	     
	    -->
<%@ page language="java"   
		contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"%>
    	
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Hello JSP World</title>
	</head>
	
	<body>
		<!-- 사용자로부터 name 을 받아서 환영메세지 출력/ -->
		<%
		String name = request.getParameter("name");
		if (name == null) { 	//사용자가 전달한 매개변수 name이 없으면
			name = "아무개";
		}
		%>
		
		<h1>Hello JSP World</h1>
		<p>안녕하세요, <%= name %>님</p> <%-- HTML 코드와 JSP 코드가 혼합된 부분 : <% = name 은 Java 코드에서 계산된 값을 출력 --%>
		<p>이것은 JSP로 만들어진 동적 페이지입니다.</p>
		
		<p> JSP는 Java 코드를 HTML 페이지에 포함하여 동적인 웹 페이지를 생성하는 데 사용됩니다 </p>
		<p> HTML 파일과 마찬가지로 사용자에게 웹 페이지를 보여주고 사용자의 입력을 받아들이며, 
			필요에 따라 서버 측 로직을 실행하여 동적 콘텐츠를 생성합니다. </p>
		<p> JSP 파일은 웹 애플리케이션의 일부로 사용되며, 
			웹 애플리케이션 디렉토리의 하위 폴더에 위치할 수 있습니다 </p>
			
		<p> 해당jsp파일은 클라이언트(웹 브라우저)와 상호작용하여 사용자에게 보여지는 콘텐츠를 생성합니다. </p>
		
		
	</body>
	
</html>