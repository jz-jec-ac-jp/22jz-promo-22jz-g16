<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>お気に入り画面</title>
    <script src="assets/js/humberger.js"></script>
    <script src="assets/js/top-page.js" defer></script>
    <script src="assets/js/header-anim.js"></script>


</head>

<body>
    <!-- header -->
    <header>
        <div class="head">

            <nav class="nav">
                <h1 class="Inair"><a href="">Inair</a></h1>
                <li class="nav-top"><a href="user/product_top/index.html">ホーム</a></li>
                <li><a href="user/login/index.html">ログイン</a></li>
                <li><a href="user/product_shopcart/index.html">カート</a></li>
                <li><a href="user/purchase_favorite/index.html">お気に入り</a></li>
                <li><a href="user/purchase_history/index.html">商品履歴</a></li>
                <li><a href="user/footer_shop/index.html">店舗</a></li>
                <li><a href="user/footer_product/index.html">商品</a></li>
                <li><a href="user/footer_service/index.html">サービス</a></li>
                <li><a href="user/footer_inquiry/index.html">お問い合わせ</a></li>
                <li><a href="user/footer_about Inair/index.html">Inairについて</a></li>
                </ul>
            </nav>
            <button type="button" id="navbtn" onclick="navClick()"></button>

            <!-- ハンバーガーメニュー -->
            <!-- </div> -->
            <!-- ユーザーアイコン -->
            <a class="user-icon" href="user/login/index.html">
                <img src="assets/img/header_user.png" alt="">
            </a>
            <!-- お店のロゴ -->
            <a class="shop-logo" href="user/product_top/index.html">
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

        <div id="header-animation">
            <nav class="nav">
                <h1 class="Inair"><a href="">Inair</a></h1>
                <li class="nav-top"><a href="user/product_top/index.html">ホーム</a></li>
                <li><a href="user/login/index.html">ログイン</a></li>
                <li><a href="user/product_shopcart/index.html">カート</a></li>
                <li><a href="user/purchase_favorite/index.html">お気に入り</a></li>
                <li><a href="user/purchase_history/index.html">商品履歴</a></li>
                <li><a href="user/footer_shop/index.html">店舗</a></li>
                <li><a href="user/footer_product/index.html">商品</a></li>
                <li><a href="user/footer_service/index.html">サービス</a></li>
                <li><a href="user/footer_inquiry/index.html">お問い合わせ</a></li>
                <li><a href="user/footer_about Inair/index.html">Inairについて</a></li>
                </ul>
            </nav>
            <button type="button" id="navbtn" onclick="navClick()"></button>
            <!-- 検索アイコン -->
            <form class="search-form-anim" action="get" href="#">
                <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
                <!-- 検索ボックス -->
                <input type="search" class="search-box-anim" placeholder="入力してください">
            </form>
            <!--お気に入りアイコン  -->
            <a class="favorite-icon-anim" href="user/purchase_favorite/index.html">
                <img src="assets/img/header_favorite.png" alt="">
            </a>
            <!-- カートアイコン -->
            <a class="cart-icon-anim" href="user/product_shopcart/index.html">
                <img src="assets/img/header_cart.png" alt="">
            </a>
        </div>
    </header>
    <main>
        <!--パンくずリスト-->
        <nav>
            <ol class="breadcrumb">
                <li><a href="user/product_top/">ホーム</a></li>
                <li>お気に入り</li>
            </ol>
        </nav>
        <div class="h">

            <!-- </li> -->
            <!-- 商品データ -->
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                        <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                        <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                        <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                        <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                        <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>

        </div>

        <button id="scroll-to-top-btn"><img class="page-top-img" src="assets/img/page-top.png" alt=""></button>
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