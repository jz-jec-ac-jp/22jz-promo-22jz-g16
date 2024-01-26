<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/admin.css">
    <title>管理者ログイン</title>
</head>
<body>
    <main>
        <!-- ログイン -->
        <h1 class="admin-login">ログイン</h1>
        <p>学校メールアドレス、学籍番号_Admin</p>
        
        <div class="ad-login">
	            <%-- メッセージが存在するときのみ表示 --%>
	        <c:if test="${not empty msg}">
	            <p>${msg}</p>
	        </c:if>
	         
	        
	        <c:if test="${ not empty loginTrue }">
	        	<p>${ loginUserId }</p>
	        	<a href="Admin_logout">ログアウト</a>
	        	<a href="Admin_productList">一覧</a>
	        </c:if>
	        
	        <c:if test="${ not empty loginFalse }">
	            <form class="ad-login-form" action="#" method="post">
	                <!-- ログインID入力 -->
	                <h2 class="ad-login-id">ログインID</h2>
	                <input class="ad-id-txt" type="text" name="ad-login-id"> <!-- name="ad-login-id"  -->
	                <!-- パスワード入力 -->
	                <h2 class="ad-login-password">パスワード</h2>
	                <input class="ad-password-txt" type="text" name="ad-password-txt"> <!-- name="ad-password-txt" -->
	                <!-- ログインボタン -->
	                
	                <!-- <input class="login-button" type="button" value="ログイン"> 
	                <input type="submit" class="ad-login-button" value="ログイン" />
	                -->
	                
	                <button class="login-button" type="submit">ログイン</button>
	            </form>
	        </c:if>
        </div>
    </main>
</body>
</html>
    