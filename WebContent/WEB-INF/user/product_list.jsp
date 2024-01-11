<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/style.css">
  <title>商品一覧画面</title>
  <script src="assets/js/humberger.js"></script>
  <script src="assets/js/top-page.js" defer></script>
  <script src="assets/js/header-anim.js"></script>
  <script src="assets/js/list.js"></script>


</head>

<body>
  <!-- header -->
  <header>
    <div class="head">
      <!-- ハンバーガーメニュー -->
      <!-- </div> -->
      <!-- お店のロゴ -->
      <a class="shop-logo" href="user/product_top/index.html">
        <p>Inair</p>
      </a>
      <div class="head-right">
        <!-- ユーザーアイコン -->
        <a class="user-icon" href="user/login/index.html">
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
      <!-- <a class="favorite-icon-anim" href="user/purchase_favorite/index.html">
        <img src="assets/img/header_favorite.png" alt="">
      </a> -->
      <!-- カートアイコン -->
      <!-- <a class="cart-icon-anim" href="user/product_shopcart/index.html">
        <img src="assets/img/header_cart.png" alt="">
      </a> -->

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
    </div>

  </header>

  <main>
    <!--パンくずリスト-->
    <nav>
      <ol class="breadcrumb">
        <li><a href="user/product_top/">ホーム</a></li>
        <li><a href="user/product_list/">商品一覧</a></li>
      </ol>
    </nav>
    <div>
      <!-- カテゴリ -->
      <!-- 照明 -->
      <div class="category-item">
        <a href="javascript:popup_open_category();">

          <p>カテゴリ</p>
        </a>
      </div>
      <div id="popup-overlay-category">
        <div id="popup-window-category" class="popup-window list-pop">
          <section class="popup-header">
            <h2>カテゴリー</h2>
            <div class="popup-close">
              <a href="javascript:popup_close_category();">×</a>
            </div>
          </section>
          <div class="popup-body">
            <!-- <p>※ポップアップに表示する内容はこちらに記述します。</p> -->
            <ul class="list-ul">
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
              <!--  -->
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
              <!--  -->
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
              <!--  -->
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
              <!--  -->
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
    </div>
    
    
    
    <div class="a">
    
    <c:forEach var="item" items="${ list }">
    
      <div class="goods-item">
      <a href="Product_detail?id=${item.id }">
      
        <figure>
          <img class="p" src="assets/img/key-visuals.png" alt="">
        </figure>
        <p class="ad-productname">${ item.product_name }</p>
        <p class="price">値段:${ item.price }(税込)</p>
      </div>
      </a>
    </c:forEach>  
      
      <%--  
      <!-- </section> -->
      <div class="ur-product-list">
        <div class="goods-item">
          <figure>
            <img class="p" src="assets/img/key-visuals.png" alt="">
          </figure>
          <p class="ad-productname">商品名 家具</p>
          <p class="price">値段:5000円(税込)</p>
        </div>
      </div>
      <div class="ur-product-list">
        <div class="goods-item">
          <figure>
            <img class="p" src="assets/img/key-visuals.png" alt="">
          </figure>
          <p class="ad-productname">商品名 家具</p>
          <p class="price">値段:5000円(税込)</p>
        </div>
      </div>
      <div class="ur-product-list">
        <div class="goods-item">
          <figure>
            <img class="p" src="assets/img/key-visuals.png" alt="">
          </figure>
          <p class="ad-productname">商品名 家具</p>
          <p class="price">値段:5000円(税込)</p>
        </div>
      </div>
      <div class="ur-product-list">
        <div class="goods-item">
          <figure>
            <img class="p" src="assets/img/key-visuals.png" alt="">
          </figure>
          <p class="ad-productname">商品名 家具</p>
          <p class="price">値段:5000円(税込)</p>
        </div>
      </div>
      <div class="ur-product-list">
        <div class="goods-item">
          <figure>
            <img class="p" src="assets/img/key-visuals.png" alt="">
          </figure>
          <p class="ad-productname">商品名 家具</p>
          <p class="price">値段:5000円(税込)</p>
        </div>
      </div>
    </div>
    --%>
    <!--ページネーション-->
    <ul class="Pagination">
      <li class="Pagination-Item">
        <a class="Pagination-Item-Link" href="user/product_list/">
          <svg xmlns="http://www.w3.org/2000/svg" class="Pagination-Item-Link-Icon" fill="none" viewBox="0 0 24 24"
            stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M11 19l-7-7 7-7m8 14l-7-7 7-7" />
          </svg>
        </a>
      </li>
      <li class="Pagination-Item">
        <a class="Pagination-Item-Link" href="user/product_list/"><span>1</span></a>
      </li>
      <li class="Pagination-Item">
        <a class="Pagination-Item-Link isActive" href="user/product_list/"><span>2</span></a>
      </li>
      <li class="Pagination-Item">
        <a class="Pagination-Item-Link" href="user/product_list/"><span>3</span></a>
      </li>
      <li class="Pagination-Item">
        <a class="Pagination-Item-Link" href="user/product_list/"><span>4</span></a>
      </li>
      <li class="Pagination-Item">
        <a class="Pagination-Item-Link" href="user/product_list/"><span>5</span></a>
      </li>
      <li class="Pagination-Item">
        <a class="Pagination-Item-Link" href="user/product_list/">
          <svg xmlns="http://www.w3.org/2000/svg" class="Pagination-Item-Link-Icon" fill="none" viewBox="0 0 24 24"
            stroke="currentColor" stroke-width="2">
            <path stroke-linecap="round" stroke-linejoin="round" d="M13 5l7 7-7 7M5 5l7 7-7 7" />
          </svg>
        </a>
      </li>
    </ul>

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