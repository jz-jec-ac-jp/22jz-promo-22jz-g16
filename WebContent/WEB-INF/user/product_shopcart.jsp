<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="ja">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="assets/css/style.css">
      <title>カート画面</title>
      <script src="assets/js/humberger.js"></script>
      <script src="assets/js/top-page.js" defer></script>
      <script src="assets/js/header-anim.js"></script>
      <script src="assets/js/top-category.js"></script>

    </head>



    <body>
       <!-- header -->
  <header>
    <div class="head">
      <!-- ハンバーガーメニュー -->
      <!-- </div> -->
      <!-- お店のロゴ -->
      <a class="shop-logo" href="/user/product_top/index.html">
        <p>Inair</p>
      </a>
      <div class="head-right">
        <!-- ユーザーアイコン -->
        <a class="user-icon" href="/user/login/index.html">
          <img src="/assets/img/header_user.png" alt="">
        </a>
        <!--お気に入りアイコン  -->
        <a class="favorite-icon" href="/user/purchase_favorite/index.html">
          <img src="/assets/img/header_favorite.png" alt="">
        </a>
        <!-- カートアイコン -->
        <a class="cart-icon" href="/user/product_shopcart/index.html">
          <img src="/assets/img/header_cart.png" alt="">
        </a>
        <nav class="nav">
          <h1 class="Inair"><a href="">Inair</a></h1>
          <li class="nav-top"><a href="/user/product_top/index.html">ホーム</a></li>
          <li><a href="/user/login/index.html">ログイン</a></li>
          <li><a href="/user/product_shopcart/index.html">カート</a></li>
          <li><a href="/user/purchase_favorite/index.html">お気に入り</a></li>
          <li><a href="/user/purchase_history/index.html">商品履歴</a></li>
          <li><a href="/user/footer_shop/index.html">店舗</a></li>
          <li><a href="/user/footer_product/index.html">商品</a></li>
          <li><a href="/user/footer_service/index.html">サービス</a></li>
          <li><a href="/user/footer_inquiry/index.html">お問い合わせ</a></li>
          <li><a href="/user/footer_about Inair/index.html">Inairについて</a></li>
          </ul>
        </nav>
        <button type="button" id="navbtn" onclick="navClick()"></button>

      </div>
    </div>
      <!-- 検索アイコン -->
      <form class="search-form" action="get" href="#">
        <input type="image" class="search-icon" src="/assets/img/header_search.png" alt="">
        <!-- 検索ボックス -->
        <input type="search" class="search-box" placeholder="入力してください">
      </form>


    <div id="header-animation" class="header-anim">
      <!-- 検索アイコン -->
      <form class="search-form-anim" action="get" href="#">
        <input type="image" class="search-icon" src="/assets/img/header_search.png" alt="">
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
        <li><a href="/user/login/index.html">ログイン</a></li>
        <li><a href="/user/product_shopcart/index.html">カート</a></li>
        <li><a href="/user/purchase_favorite/index.html">お気に入り</a></li>
        <li><a href="/user/purchase_history/index.html">商品履歴</a></li>
        <li><a href="/user/footer_shop/index.html">店舗</a></li>
        <li><a href="/user/footer_product/index.html">商品</a></li>
        <li><a href="/user/footer_service/index.html">サービス</a></li>
        <li><a href="/user/footer_inquiry/index.html">お問い合わせ</a></li>
        <li><a href="/user/footer_about Inair/index.html">Inairについて</a></li>
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
            <li><a href="user/puroduct_detail/">商品詳細</a></li>
            <li>カート</li>
          </ol>
        </nav>
        <!--商品データ-->

        <div class="year-total">
          <h2 class="peace">個数:4個</h2>
          <h2 class="total-pay">合計金額：40,000円(税込)</h2>
        </div>
        <!--商品データ-->
        <div class="cart-product-div">
          <!-- ここから -->
          <c:forEach var="item" items="${list }">
            <a href="Product_shopcart?id${item.id }">
              <section class="history-product">
                <h1 class="us-productname">${item.product_name }</h1>
                <div class="us-detail-Product-name">


                  <figure class="purchase-product">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                  </figure>
                  <div class="introduction-div">
                    <p class="us-product-man">商品コード：○○</p>
                    <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                    <p class="value">${item.product_price }(税込)</p>
                  </div>
                  <p class="peace">個数 1</p>
                  <div class="us-detail-peace">
                    <p class="postage">送料:500円</p>
                    <p class="total-value">小計:10,000円(税込)</p>
                  </div>
                </div>
            </a>
            </section>
          </c:forEach>
          <%-- <!-- ここまで -->
            <!-- ここから -->
            <section class="history-product">
              <p class="us-productname">モノトーン椅子</p>
              <div class="us-detail-Product-name">
                <figure class="purchase-product">
                  <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                </figure>
                <div class="introduction-div">
                  <p class="us-product-man">商品コード：○○</p>
                  <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                  <p class="value">10,000円(税込)</p>
                </div>
                <p class="peace">個数 1</p>
                <div class="us-detail-peace">
                  <p class="postage">送料:500円</p>
                  <p class="total-value">小計:10,000円(税込)</p>
                </div>
              </div>
            </section>
            <!-- ここまで -->
            <!-- ここから -->
            <section class="history-product">
              <p class="us-productname">モノトーン椅子</p>
              <div class="us-detail-Product-name">
                <figure class="purchase-product">
                  <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                </figure>
                <div class="introduction-div">
                  <p class="us-product-man">商品コード：○○</p>
                  <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                  <p class="value">10,000円(税込)</p>
                </div>
                <p class="peace">個数 1</p>
                <div class="us-detail-peace">
                  <p class="postage">送料:500円</p>
                  <p class="total-value">小計:10,000円(税込)</p>
                </div>
              </div>
            </section>
            <!-- ここまで -->
            <!-- ここから -->
            <section class="history-product">
              <p class="us-productname">モノトーン椅子</p>
              <div class="us-detail-Product-name">
                <figure class="purchase-product">
                  <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                </figure>
                <div class="introduction-div">
                  <p class="us-product-man">商品コード：○○</p>
                  <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                  <p class="value">10,000円(税込)</p>
                </div>
                <p class="peace">個数 1</p>
                <div class="us-detail-peace">
                  <p class="postage">送料:500円</p>
                  <p class="total-value">小計:10,000円(税込)</p>
                </div>
              </div>
            </section>
            <!-- ここまで -->
            <!-- ここから -->
            <section class="history-product">
              <p class="us-productname">モノトーン椅子</p>
              <div class="us-detail-Product-name">
                <figure class="purchase-product">
                  <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                </figure>
                <div class="introduction-div">
                  <p class="us-product-man">商品コード：○○</p>
                  <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                  <p class="value">10,000円(税込)</p>
                </div>
                <p class="peace">個数 1</p>
                <div class="us-detail-peace">
                  <p class="postage">送料:500円</p>
                  <p class="total-value">小計:10,000円(税込)</p>
                </div>
              </div>
            </section>
            <!-- ここまで -->
            <!-- ここから -->
            <section class="history-product">
              <p class="us-productname">モノトーン椅子</p>
              <div class="us-detail-Product-name">
                <figure class="purchase-product">
                  <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                </figure>
                <div class="introduction-div">
                  <p class="us-product-man">商品コード：○○</p>
                  <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                  <p class="value">10,000円(税込)</p>
                </div>
                <p class="peace">個数 1</p>
                <div class="us-detail-peace">
                  <p class="postage">送料:500円</p>
                  <p class="total-value">小計:10,000円(税込)</p>
                </div>
              </div>
            </section>
            <!-- ここまで -->
            --%>
            <!--確定ボタン-->
            
	         <a href="Product_purchase" class="cart-btn">購入する</a>
	            <form class="search-form" action="get" href="#">
	            <%--
	              <input class="confirm-button" type="submit" value="購入する">
	               --%>         
	            </form>
				
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