<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		//	JSP 내장객체 request 객체의 "msg" 속성값을 자바스크립트 alert() 함수로 출력
		alert("${msg}");	// \${msg} 부분은 서버측에서 실행된 후 결과값이 치환되어 전송됨
		
		//	request 객체의 "targetURL" 속성값이 비어있을 경우 이전 페이지로 돌아가기
		//	아니면, "targetURL" 속성에 지정된 페이지로 이동 처리
		if ("${targetURL}" == "") {
			history.back();
		} else {
			location.href = "${targetURL}"
		}
		
	</script>
</body>
</html>