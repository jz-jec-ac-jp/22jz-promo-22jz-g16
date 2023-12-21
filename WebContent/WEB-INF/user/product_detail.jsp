<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
    
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>商品詳細画面</title>
    <script src="assets/js/humberger.js"></script>
    <script src="assets/js/top-page.js" defer></script>
    <script src="assets/js/header-anim.js"></script>
    <script src="assets/js/top-category.js"></script>
    <script src="assets/js/review-animation.js"></script>


</head>

<body>
    <!-- header -->
    <header>
        <div class="head">
            <!-- ハンバーガーメニュー -->
            <!-- </div> -->
            <!-- お店のロゴ -->
            <a class="shop-logo" href="Top">
                <p>Inair</p>
            </a>
            <div class="head-right">
                <!-- ユーザーアイコン -->
                <a class="user-icon" href="login.jsp">
                    <img src="assets/img/header_user.png" alt="">
                </a>
                <!--お気に入りアイコン  -->
                <a class="favorite-icon" href="user/purchase_favorite/index.html">
                    <img src="assets/img/header_favorite.png" alt="">
                </a>
                <!-- カートアイコン -->
                <a class="cart-icon" href="user/product_shopcart/index.html">
                    <img src="assets/img/header_cart.png" alt="">
                </a>
                <nav class="nav">
                    <h1 class="Inair"><a href="">Inair</a></h1>
                    <li class="nav-top"><a href="/user/product_top/index.html">ホーム</a></li>
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

            </div>
        </div>
        <!-- 検索アイコン -->
        <form class="search-form" action="get" href="#">
            <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
            <!-- 検索ボックス -->
            <input type="search" class="search-box" placeholder="入力してください">
        </form>


        <div id="header-animation" class="header-anim">
            <!-- 検索アイコン -->
            <form class="search-form-anim" action="get" href="#">
                <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
                <!-- 検索ボックス -->
                <input type="search" class="search-box-anim" placeholder="入力してください">
            </form>
            <!--お気に入りアイコン  -->
            <!-- <a class="favorite-icon-anim" href="/user/purchase_favorite/index.html">
        <img src="/assets/img/header_favorite.png" alt="">
      </a> -->
            <!-- カートアイコン -->
            <!-- <a class="cart-icon-anim" href="/user/product_shopcart/index.html">
        <img src="/assets/img/header_cart.png" alt="">
      </a> -->

            <nav class="nav">
                <h1 class="Inair"><a href="">Inair</a></h1>
                <li class="nav-top"><a href="/user/product_top/index.html">ホーム</a></li>
                <li><a href="user/login/login.jsp">ログイン</a></li>
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
        </div>

    </header>

    <main>
    
    
    
    
    
    
        <!--パンくずリスト-->
        <nav>
            <ol class="breadcrumb">
                <li><a href="user/product_top/">ホーム</a></li>
                <li><a href="user/product_list/">商品一覧</a></li>
                <li>商品詳細</li>
            </ol>
        </nav>
        <figure>
            <img class="product-img" src="assets/img/chair.jpg" alt="">
        </figure>
        <h1 class="detail-product-name">${item.product_name}</h1>
        <div class="product">
            <p>${item.price}</p>
            <figure>
                <img src="assets/img/header_favorite.png" alt="">
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
            <%--
            <p>
                これも仮 <br>
                背中にフィットし、やさしく身体を支えてくれる背もたれのデザインが魅力のダイニングチェアです。フレームはあたたかみのある風合いのナラ材を落ち着いた印象のBWN色で仕上げており、上品な佇まいです。
            </p>
             --%>
             <p>${ item.product_detail }</p>
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

        <div class="wrap">

            <div class="wrap">

                <details class="details">
                    <summary class="details__summary">もっと見る</summary>
                    <div class="details__content">
                        <!-- <p>&lt;details&gt;要素を使う場合の開閉アニメーションはJavaScriptで補います。</p> -->
                        <!-- ↓↓最初隠したいコンテンツ↓↓ -->
                        <div class="contents">
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
                        </div>
                        <!-- ↑↑最初隠したいコンテンツ ↑↑-->
                    </div>
                </details>

                <!-- <label for="label1">▼ もっと見る</label> -->
                <!-- <input type="checkbox" id="label1" class="switch" /> -->



            </div>

            <div class="product-button">
                <input class="return-btn" type="submit" value="戻る">
                <input class="cart-btn" type="submit" value="カートに入れる">
            </div>

            <!-- カテゴリ -->
            <h2 class="category">Category</h2>
            <div class="category-list">
                <!-- 椅子 -->
                <div class="category-item">
                    <a href="javascript:popup_open_chair();">
                        <figure>
                            <img src="assets/img/chair.jpg" alt="">
                        </figure>
                        <p>椅子</p>
                    </a>
                </div>
                <div id="popup-overlay-chair">
                    <div id="popup-window-chair" class="popup-window">
                        <section class="popup-header">
                            <h2>椅子のカテゴリー</h2>
                            <div class="popup-close">
                                <a href="javascript:popup_close_chair();">×</a>
                            </div>
                        </section>
                        <div class="popup-body">
                            <!-- <p>※ポップアップに表示する内容はこちらに記述します。</p> -->
                            <ul>
                                <li class="popup-list">
                                    <a href="user/product_list/index.html">
                                        <img src="assets/img/chair.jpg" alt="">
                                        <p>モノトーン</p>
                                    </a>
                                </li>
                                <li class="popup-list">
                                    <a href="user/product_list/index.html">
                                        <img src="assets/img/chair.jpg" alt="">
                                        <p>カントリー風</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>


                <!-- 机 -->
                <div class="category-item">
                    <a href="javascript:popup_open_table();">
                        <figure>
                            <img src="assets/img/table.jpg" alt="">
                        </figure>
                        <p>机</p>
                    </a>
                </div>
                <div id="popup-overlay-table">
                    <div id="popup-window-table" class="popup-window">
                        <section class="popup-header">
                            <h2>机のカテゴリー</h2>
                            <div class="popup-close">
                                <a href="javascript:popup_close_table();">×</a>
                            </div>
                        </section>
                        <div class="popup-body">
                            <!-- <p>※ポップアップに表示する内容はこちらに記述します。</p> -->
                            <ul>
                                <li class="popup-list">
                                    <a href="user/product_list/index.html">
                                        <img src="assets/img/table.jpg" alt="">
                                        <p>モノトーン</p>
                                    </a>
                                </li>
                                <li class="popup-list">
                                    <a href="user/product_list/index.html">
                                        <img src="assets/img/table.jpg" alt="">
                                        <p>カントリー風</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>


            <div class="category-list-line">
                <!-- 照明 -->
                <div class="category-item">
                    <a href="javascript:popup_open_light();">
                        <figure>
                            <img src="assets/img/light.jpg" alt="">
                        </figure>
                        <p>照明</p>
                    </a>
                </div>
                <div id="popup-overlay-light">
                    <div id="popup-window-light" class="popup-window">
                        <section class="popup-header">
                            <h2>照明のカテゴリー</h2>
                            <div class="popup-close">
                                <a href="javascript:popup_close_light();">×</a>
                            </div>
                        </section>
                        <div class="popup-body">
                            <!-- <p>※ポップアップに表示する内容はこちらに記述します。</p> -->
                            <ul>
                                <li class="popup-list">
                                    <a href="user/product_list/index.html">
                                        <img src="assets/img/light.jpg" alt="">
                                        <p>モノトーン</p>
                                    </a>
                                </li>
                                <li class="popup-list">
                                    <a href="user/product_list/index.html">
                                        <img src="assets/img/light.jpg" alt="">
                                        <p>カントリー風</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>


                <!-- 収納 -->
                <div class="category-item">
                    <a href="javascript:popup_open_storage();">
                        <figure>
                            <img src="assets/img/storage.jpg" alt="">
                        </figure>
                        <p>収納</p>
                    </a>
                </div>
                <div id="popup-overlay-storage">
                    <div id="popup-window-storage" class="popup-window">
                        <section class="popup-header">
                            <h2>収納のカテゴリー</h2>
                            <div class="popup-close">
                                <a href="javascript:popup_close_storage();">×</a>
                            </div>
                        </section>
                        <div class="popup-body">
                            <!-- <p>※ポップアップに表示する内容はこちらに記述します。</p> -->
                            <ul>
                                <li class="popup-list">
                                    <a href="user/product_list/index.html">
                                        <img src="assets/img/storage.jpg" alt="">
                                        <p>モノトーン</p>
                                    </a>
                                </li>
                                <li class="popup-list">
                                    <a href="user/product_list/index.html">
                                        <img src="assets/img/storage.jpg" alt="">
                                        <p>カントリー風</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- 雑貨 -->
                <div class="category-item">
                    <a href="javascript:popup_open_goods();">
                        <figure>
                            <img src="assets/img/table.jpg" alt="">
                        </figure>
                        <p>雑貨</p>
                    </a>
                </div>
            </div>

            <div id="popup-overlay-goods">
                <div id="popup-window-goods" class="popup-window">
                    <section class="popup-header">
                        <h2>椅子のカテゴリー</h2>
                        <div class="popup-close">
                            <a href="javascript:popup_close_goods();">×</a>
                        </div>
                    </section>
                    <div class="popup-body">
                        <!-- <p>※ポップアップに表示する内容はこちらに記述します。</p> -->
                        <ul>
                            <li class="popup-list">
                                <a href="user/product_list/index.html">
                                    <img src="assets/img/chair.jpg" alt="">
                                    <p>モノトーン</p>
                                </a>
                            </li>
                            <li class="popup-list">
                                <a href="user/product_list/index.html">
                                    <img src="assets/img/chair.jpg" alt="">
                                    <p>カントリー風</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
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