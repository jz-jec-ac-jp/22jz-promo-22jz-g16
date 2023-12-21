<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>ログイン画面</title>
    <script src="assets/js/humberger.js"></script>
</head>

<body>

    <!-- header -->
    <header>
        <div class="head">
            <!-- ハンバーガーメニュー -->
            <!-- これはimg画像じゃなくてjavascriptでつくる -->
            <!-- <div class="hamburger"> -->
            <!-- <a class="humberger" href="#">
                <img src="assets/img/header_humbergermenu.png" alt="">
            </a> -->
            <nav class="nav">
                <ul>
                    <li><a href="Produvt_favoritel">お気に入り</a></li>
                    <li><a href="Product_history">商品履歴</a></li>
                </ul>
            </nav>
            <button type="button" id="navbtn" onclick="navClick()"></button>

            <div class="hum"></div>
            <!-- </div> -->
            <!-- ユーザーアイコン -->
            <a class="user-icon" href="#">
                <img src="assets/img/header_user.png" alt="">
            </a>
            <!-- お店のロゴ -->
            <a class="shop-logo" href="Product_top">
                <!-- <img src="assets/img/header_title.png" alt=""> -->
                <p>Inair</p>
            </a>
            <!--お気に入りアイコン  -->
            <a class="favorite-icon" href="purchase_favorite">
                <img src="assets/img/header_favorite.png" alt="">
            </a>
            <!-- カートアイコン -->
            <a class="cart-icon" href="Product_shopcart">
                <img src="assets/img/header_cart.png" alt="">
            </a>
        </div>
        <!-- 検索アイコン -->
        <form class="search-form" action="get" href="#">
            <!-- <figure>
                <img class="search-icon" src="assets/img/header_search.png" alt="">
            </figure> -->
            <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
            <!-- 検索ボックス -->
            <input type="search" class="search-box" placeholder="入力してください">
        </form>
        <!-- <span class="material-symbols-outlined">
            search
        </span> -->
    </header>
    

    <!-- main -->
    <main>
        <h1 class="login-title">ログイン</h1>
        <div class="login">
            <!-- ログインフォーム -->
            <form class="login-form" action="#" method="get">
                <!-- ログインID入力 -->
                <h2 class="login-id">ログインID</h2>
                <input class="id-txt" type="text" name="login-id" placeholder="入力してください">
                <!-- パスワード入力 -->
                <h2 class="login-password">パスワード</h2>
                <input class="password-txt" type="text" name="password-txt" placeholder="入力してください">
                <a class="password-forget" href="#">パスワードをお忘れの方</a>
                <!-- ログインボタン -->
                <input class="login-button" type="submit" value="ログイン">
                <!-- <input class="login-button" type="button" value="ログイン"> -->
            </form>
            <!-- 新規会員登録はこちら -->
            <a class="account-create" href="#">新規会員登録はこちら</a>
        </div>
    </main>

    <!-- footer -->
    <footer>
        <!-- 店舗 -->
        <div class="footer-aligned">
            <a href="#" class="footer-store">
                <figure>
                    <img src="assets/img/footer_store.png" alt="">
                </figure>
                <p>店舗</p>
            </a>
            <div></div>
            <!-- <div class="footer-div"></div> -->
            <!-- 商品 -->
            <a href="#" class="footer-shopping">
                <figure>
                    <img src="assets/img/footer_shopping.png" alt="">
                </figure>
                <p>商品</p>
            </a>
            <!-- サービス -->
            <a href="#" class="footer-service">
                <figure>
                    <img src="assets/img/footer_service.png" alt="">
                </figure>
                <p>サービス</p>
            </a>
            <!-- お問い合わせ -->
            <a href="#" class="footer-support">
                <figure>
                    <img src="assets/img/footer_service.png" alt="">
                </figure>
                <p>お問い合わせ</p>
            </a>
            <!-- サイトについて -->
            <a href="#" class="footer-site">
                <figure>
                    <img src="assets/img/footer_site.png" alt="">
                </figure>
                <p>Inairについて</p>
            </a>
        </div>
    </footer>
</body>

</html>