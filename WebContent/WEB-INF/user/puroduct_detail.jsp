<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/css/style.css">
    <title>商品詳細画面</title>
    <script src="/assets/js/humberger.js"></script>
</head>

<body>
    <!-- header -->
    <header>
        <div class="head">
            <!-- ハンバーガーメニュー -->
            <!-- これはimg画像じゃなくてjavascriptでつくる -->
            <!-- <div class="hamburger"> -->
            <!-- <a class="humberger" href="#">
          <img src="/assets/img/header_humbergermenu.png" alt="">
      </a> -->
            <nav class="nav">
                <ul>
                    <li><a href="/user/purchase_favorite/index.html">お気に入り</a></li>
                    <li><a href="/user/purchase_history/index.html">商品履歴</a></li>
                </ul>
            </nav>
            <button type="button" id="navbtn" onclick="navClick()"></button>

            <div class="hum"></div>
            <!-- </div> -->
            <!-- ユーザーアイコン -->
            <a class="user-icon" href="/user/login/index.html">
                <img src="/assets/img/header_user.png" alt="">
            </a>
            <!-- お店のロゴ -->
            <a class="shop-logo" href="/user/product_top/index.html">
                <!-- <img src="/assets/img/header_title.png" alt=""> -->
                <p>Inair</p>
            </a>
            <!--お気に入りアイコン  -->
            <a class="favorite-icon" href="/user/purchase_favorite/index.html">
                <img src="/assets/img/header_favorite.png" alt="">
            </a>
            <!-- カートアイコン -->
            <a class="cart-icon" href="/user/product_shopcart/index.html">
                <img src="/assets/img/header_cart.png" alt="">
            </a>
        </div>
        <!-- 検索アイコン -->
        <form class="search-form" action="get" href="#">
            <!-- <input class="search-icon" type="submit"  alt=""> -->
            <img src="/assets/img/header_search.png" alt="">
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
        <figure>
            <img class="product-img" src="/assets/img/chair.jpg" alt="">
        </figure>
        <h1 class="product-name">モノトーン椅子</h1>
        <div class="product">
            <p>5000円</p>
            <figure>
                <img src="/assets/img/header_favorite.png" alt="">
            </figure>
        </div>
        <div class="product-star">
            <p>☆☆☆☆</p>
            <p>4.0</p>
        </div>

        <div class="detaile">
            <p>商品コード</p>
            <p>*****</p>
            <p>カラー</p>
            <p>*****</p>
            <p>サイズ</p>
            <p>*****</p>
            <p>重量</p>
            <p>*****</p>
        </div>

        <div class="product-content">
            <p>
                これも仮 <br>
                背中にフィットし、やさしく身体を支えてくれる背もたれのデザインが魅力のダイニングチェアです。フレームはあたたかみのある風合いのナラ材を落ち着いた印象のBWN色で仕上げており、上品な佇まいです。
            </p>
        </div>

        <input class="product-AR" type="submit" value="ARで表示してみよう！！">

        <div class="product-review">
            <div class="product-review-item">
                <h2>レビュー</h2>
                <p>総合評価</p>
                <p>4.0</p>
                <p>☆☆☆☆</p>
            </div>
            <div class="product-review-star">
                <p>☆☆☆☆☆</p>
                <p>☆☆☆☆</p>
                <p>☆☆☆</p>
                <p>☆☆</p>
                <p>☆</p>
            </div>
        </div>

        <div class="product-button">
            <input class="return-btn" type="submit" value="戻る">
            <input class="cart-btn" type="submit" value="カートに入れる">
        </div>

        <!-- <h2 class="product-relation">椅子の商品</h2>
    <div class="product-list">
        <div class="product-item">
            <figure>
                <img src="/assets/img/key-visuals.png" alt="">
            </figure>
            <p>モノトーン椅子</p>
        </div>
        <div class="product-item">
            <figure>
                <img src="/assets/img/key-visuals.png" alt="">
            </figure>
            <p>モノトーン椅子</p>
        </div>
    </div> -->

        <!-- カテゴリ -->
        <h2 class="category">Category</h2>
        <div class="category-list">
            <!-- 椅子 -->
            <div class="category-item">
                <figure>
                    <img src="/assets/img/chair.jpg" alt="">
                </figure>
                <p>椅子</p>
            </div>
            <!-- 机 -->
            <div class="category-item">
                <figure>
                    <img src="/assets/img/table.jpg" alt="">
                </figure>
                <p>机</p>
            </div>
            <!-- 照明 -->
            <div class="category-item">
                <figure>
                    <img src="/assets/img/light.jpg" alt="">
                </figure>
                <p>照明</p>
            </div>
            <!-- 収納 -->
            <div class="category-item">
                <figure>
                    <img src="/assets/img/storage.jpg" alt="">
                </figure>
                <p>収納</p>
            </div>
        </div>
    </main>

    <!-- footer -->
    <footer>
        <!-- 店舗 -->
        <div class="footer-aligned">
            <a href="#" class="footer-store">
                <figure>
                    <img src="/assets/img/footer_store.png" alt="">
                </figure>
                <p>店舗</p>
            </a>
            <div></div>
            <!-- <div class="footer-div"></div> -->
            <!-- 商品 -->
            <a href="#" class="footer-shopping">
                <figure>
                    <img src="/assets/img/footer_shopping.png" alt="">
                </figure>
                <p>商品</p>
            </a>
            <!-- サービス -->
            <a href="#" class="footer-service">
                <figure>
                    <img src="/assets/img/footer_service.png" alt="">
                </figure>
                <p>サービス</p>
            </a>
            <!-- お問い合わせ -->
            <a href="#" class="footer-support">
                <figure>
                    <img src="/assets/img/footer_service.png" alt="">
                </figure>
                <p>お問い合わせ</p>
            </a>
            <!-- サイトについて -->
            <a href="#" class="footer-site">
                <figure>
                    <img src="/assets/img/footer_site.png" alt="">
                </figure>
                <p>Inairについて</p>
            </a>
        </div>
    </footer>
</body>

</html>