<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	
	 <c:set value="${pageContext.request.contextPath}" var="path" scope="page" />
	
	<link href="http://cdn.staticfile.org/twitter-bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
	<link href="${path}/css/style.css" rel="stylesheet">
	
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
	
	<title>Green|用戶注冊</title>
</head>

<body>
  <%@ include file="header.jsp" %>	
  <div class="container">
    <form class="form-register" action="<c:url value="/register.html" />" method="post">
	  <h4 class="form-register-heading">注冊信息</h4>
      <input type="text" class="form-control" name="userName" placeholder="用戶名"> 
      <input type="password" class="form-control" name="password" placeholder="密碼"> 
      <input type="password" class="form-control" name="again" placeholder="確認密碼"> 
	  <button class="btn btn-lg btn-primary btn-block" type="submit">註冊</button>
	</form>
  </div>
</body>
</html>
