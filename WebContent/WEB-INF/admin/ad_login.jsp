<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../assets/css/admin.css">
    <title>管理者ログイン</title>
</head>
<body>
    <main>
        <!-- ログイン -->
        <h1 class="admin-login">ログイン</h1>
        <div class="ad-login">
            <form class="ad-login-form" action="#" method="get">
                <!-- ログインID入力 -->
                <h2 class="ad-login-id">ログインID</h2>
                <input class="ad-id-txt" type="text" name="ad-login-id">
                <!-- パスワード入力 -->
                <h2 class="ad-login-password">パスワード</h2>
                <input class="ad-password-txt" type="text" name="ad-password-txt">
                <!-- ログインボタン -->
                <input type="submit" class="ad-login-button" value="ログイン" />
                <!-- <input class="login-button" type="button" value="ログイン"> -->
            </form>
        </div>
    </main>
</body>
</html>