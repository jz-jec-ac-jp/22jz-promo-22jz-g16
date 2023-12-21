<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>カード画面</title>
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
                    <li><a href="user/purchase_favorite/index.html">お気に入り</a></li>
                    <li><a href="user/purchase_history/index.html">商品履歴</a></li>
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
          <li>カード</li>
        </ol>
    </nav>
        <div class="card-main">
            <form class="card-form" action="#" method="get">
                <h1 class="card-logo">Visa</h1>
                <!-- カード番号 -->
                <h2>カード番号（半角）*</h2>
                <input class="card-number" type="text" inputmode="numeric" pattern="\d*" placeholder="入力してください"
                    pattern="[0-9]">
                <!-- 有効期限 -->
                <h2>有効期限*</h2>
                <div class="expiration">
                    <input class="expiration-month" type="number" placeholder="例）12">
                    <p>月　/</p>
                    <input class="expiration-year" type="number" placeholder="例）27">
                    <p>年</p>
                </div>
                <!-- 名義人名 -->
                <h2>名義人名（半角ローマ字）</h2>
                <input class="holder-name" type="text" placeholder="入力してください">
                <!-- セキュリティ番号 -->
                <h2>セキュリティ番号</h2>
                <input class="security-number" type="number" placeholder="入力してください">
                <!-- 確定ボタン -->
                <input type="submit" class="card-submit" value="次へ">
            </form>
            <input class="card-return" type="submit" value="戻る">
            <!-- エラー文や警告文 <div></div> -->
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