<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>レビュー画面</title>
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
                    <li><a href="Product_favorite">お気に入り</a></li>
                    <li><a href="Product_history">商品履歴</a></li>
                </ul>
            </nav>
            <button type="button" id="navbtn" onclick="navClick()"></button>

            <div class="hum"></div>
            <!-- </div> -->
            <!-- ユーザーアイコン -->
            <a class="user-icon" href="user/login/index.html">
                <img src="assets/img/header_user.png" alt="">
            </a>
            <!-- お店のロゴ -->
            <a class="shop-logo" href="user/product_top/index.html">
                <!-- <img src="assets/img/header_title.png" alt=""> -->
                <p>Inair</p>
            </a>
            <!--お気に入りアイコン  -->
            <a class="favorite-icon" href="user/purchase_favorite/index.html">
                <img src="assets/img/header_favorite.png" alt="">
            </a>
            <!-- カートアイコン -->
            <a class="cart-icon" href="user/product_shopcart/index.html">
                <img src="assets/img/header_cart.png" alt="">
            </a>
        </div>
        <!-- 検索アイコン -->
        <form class="search-form" action="get" href="#">
            <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
            <!-- 検索ボックス -->
            <input type="search" class="search-box" placeholder="入力してください">
        </form>
        <!-- <span class="material-symbols-outlined">
      search
  </span> -->
    </header>

    <main>
    <!--パンくずリスト-->
    <nav>
        <ol class="breadcrumb">
          <li><a href="/">ホーム</a></li>
          <li><a href="/.../">2層目</a></li>
          <li>新規会員登録</li>
        </ol>
    </nav>
        <h1 class="title-review">レビュー</h1>
        <!-- <div class="review">    -->
        <!-- 商品データ -->
        <div class="review">
            <img class="review-productimg" src="assets/img/chair.jpg" alt="">
            <h2 class="review-productname">モノトーン椅子</h2>
            <!--総合評価-->
            <h2 class="all-evalution">総合評価</h2>
            <div class="evaluation-div">
                <p class="evaluation">3.0</p>
                <p class="evaluation-star">☆☆☆☆☆</p>
            </div>
            <!--レビュータイトル-->
            <div class="review-div">
                <h2 class="review-title">レビュータイトル</h2>

                <form class="review-send-form" action="get" href="#">
                    <div class="customer-review">
                        <!-- <p class="customer-comment">しっかりしている!!</p> -->
                        <input class="customer-comment" type="text" placeholder="入力してください">
                    </div>
            </div>
            <!--商品・動画-->
            <h2 class="picture-movie">写真・動画</h2>

            <div class="product-photo">
                <figure>
                    <img src="assets/img/add-icon.png" alt="">
                </figure>
                <figure>
                    <img src="assets/img/chair.jpg" alt="">
                </figure>
                <figure>
                    <img src="assets/img/chair.jpg" alt="">
                </figure>
            </div>

            <div class="write-div">
                <h2>レビュー</h2>
                <textarea class="review-text" name="review-text"></textarea>
            </div>
            <div class="review-send">
                <a class="review-product-cart" href="user/puroduct_detail/index.html">商品詳細ページへいく</a>
                <!-- 送信アイコン -->
                <input class="review-submit-icon" type="image" src="assets/img/send-icon.png" alt="">
            </div>
            </form>
        </div>
        <!-- </div> -->
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