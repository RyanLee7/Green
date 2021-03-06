<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Green">
  <meta name="author" content="orangehat">

  <c:set value="${pageContext.request.contextPath}" var="path" scope="page" />

  <link href="http://cdn.staticfile.org/twitter-bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
  <link href="${path}/css/style.css" rel="stylesheet">
  <link href="${path}/css/back-management.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

<title>Green|後台管理</title>
</head>
<body>
  <%@ include file="../header.jsp"%>
  
  <div class="container">
  
    <div class="delete-board">
      <h4>刪除版块</h4>
      <table class="table table-hover table-bordered">
	    <thead>
	      <tr>
	        <th class="th-1">版块名稱</th>
	        <th class="th-2">版块簡介</th>
	        <th class="th-3">主題帖數</th>
	        <th class="th-4">選擇</th>
	      </tr>
	     </thead>
	     <tbody>
           <c:forEach var="board" items="${boards}">
      	     <tr>
      	       <td class="td-1">${board.boardName}</td>
      	       <td class="td-2">${board.boardDesc}</td>
      	       <td class="td-3">${board.topicNum}</td>
      	       <td class="td-4">
      	         <a href="<c:url value="/board/removeBoard-${board.boardId}.html"/>">刪除</a>
      	       </td>
      	     </tr>	
           </c:forEach>
         </tbody>
       </table>  
    </div>
    
    <div class="add-board">
	  <form action="<c:url value="/forum/addBoard.html"/>" method="post">
	  	<h4>添加版块</h4>
	    <input type="text" name="boardName" class="form-control" placeholder="版块名字...">
	    <textarea name="boardDesc" class="form-control" rows="3" placeholder="版块描述..."></textarea>	
	    <button type="submit" class="btn btn-primary submit-btn">添加版块</button>
	  </form>	
	</div>
	
  </div>
  
  <script src="http://cdn.staticfile.org/jquery/2.1.1-rc2/jquery.min.js"></script>
  <script src="http://cdn.staticfile.org/twitter-bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>

