<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
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
          <a class="shop-logo" href="Product_top">
            <p>Inair</p>
          </a>
          <div class="head-right">
            <!-- ユーザーアイコン -->
            <a class="user-icon" href="Product_login">
              <img src="assets/img/header_user.png" alt="">
            </a>
            <!--お気に入りアイコン  -->
            <a class="favorite-icon" href="Product_favorite">
              <img src="assets/img/header_favorite.png" alt="">
            </a>
            <!-- カートアイコン -->
            <a class="cart-icon" href="Product_shopcart">
              <img src="assets/img/header_cart.png" alt="">
            </a>
            <nav class="nav">
              <h1 class="Inair"><a href="Product_top">Inair</a></h1>
              <li><a href="Product_login">ログイン</a></li>
              <li><a href="Product_list">商品一覧</a></li>
              <li><a href="Product_favorite">お気に入り</a></li>
              <li><a href="Product_history">商品履歴</a></li>
              <li><a href="Footer_shop">店舗</a></li>
              <li><a href="Footer_product">商品</a></li>
              <li><a href="Footer_service">サービス</a></li>
              <li><a href="Footer_inquiry">お問い合わせ</a></li>
              <li><a href="Footer_about_Inair">Inairについて</a></li>
              </ul>
            </nav>
            <button type="button" id="navbtn" onclick="navClick()"></button>
    
          </div>
        </div>
          <!-- 検索アイコン -->
          <form class="search-form" action="Product_list" method="post">
            <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
            <!-- 検索ボックス -->
            <input type="search" class="search-box" placeholder="入力してください" name="search">
          </form>
    
    
    
        <div id="header-animation" class="header-anim">
          <!-- 検索アイコン -->
          <form class="search-form" action="Product_list" method="post">
            <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
            <!-- 検索ボックス -->
            <input type="search" class="search-box" placeholder="入力してください" name="search">
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
            <h1 class="Inair"><a href="Product_top">Inair</a></h1>
            <li><a href="Product_login">ログイン</a></li>
            <li><a href="Product_list">商品一覧</a></li>
            <li><a href="Product_favorite">お気に入り</a></li>
            <li><a href="Product_history">商品履歴</a></li>
            <li><a href="Footer_shop">店舗</a></li>
            <li><a href="Footer_product">商品</a></li>
            <li><a href="Footer_service">サービス</a></li>
            <li><a href="Footer_inquiry">お問い合わせ</a></li>
            <li><a href="Footer_about_Inair">Inairについて</a></li>
            </ul>
          </nav>
          <button class="nav1" type="button" id="navbtn" onclick="navClick()"></button>
        </div>
    
      </header>

    <main>
        <!--パンくずリスト-->
        <nav>
            <ol class="breadcrumb">
                <li><a href="Product_top">ホーム</a></li>
                <li><a href="Product_list">商品一覧</a></li>
                <li>商品詳細</li>
            </ol>
        </nav>
        <div class="slide-wrap">
          <c:forEach var="img" items="${ item.imgUrl }">
         	<div class="slide-box">
              <figure>
                <img class="imgDetail" src="${ img.img_url }" alt="">
              </figure>
         	 </div>
            </c:forEach>
        </div>
         
         
        <h1 class="detail-product-name">${item.product_name}</h1>
        <div class="product">
            <p>${item.product_price}円</p>
            <!-- お気に入り -->
            <form  action="#" method="post">
            	<button type="submit">
            		<input type="hidden" name="favoriteId" value="${ item.id }"> 	
		            <figure>
		                <img src="assets/img/header_favorite.png" alt="">
		            </figure>
            	</button>
            </form>
            <!-- 
            <figure>
                <img src="assets/img/header_favorite.png" alt="">
            </figure>
             -->
            
        </div>
        <div class="product-star">
            <p>☆☆☆☆</p>
            <p>4.0</p>
        </div>

        <div class="detaile">
            <p>商品コード</p>
            <p>${ item.id }</p>
           
            <p>カラー</p>
            <c:forEach var="color" items="${ item.colorTexts }">
			   <p>${ color.purchase_color}</p>
			</c:forEach>
         
            <p>サイズ</p>
             <c:forEach var="size" items="${ item.size_name }">
			   <p>${ size.size_name }</p>
			</c:forEach>
			
			<p>重量</p>
             <c:forEach var="weight" items="${ item.weight_name }">
			   <p>${ weight.purchase_weight}</p>
			</c:forEach>
			
        </div>

        <div class="product-content">
            <!-- <p>
                これも仮 <br>
                背中にフィットし、やさしく身体を支えてくれる背もたれのデザインが魅力のダイニングチェアです。フレームはあたたかみのある風合いのナラ材を落ち着いた印象のBWN色で仕上げており、上品な佇まいです。
            </p> -->
            
            
            <p>${ item.product_detail }</p>
        </div>

        <input class="product-AR" type="submit" value="ARで表示してみよう！！">

        <div class="product-review">
            <div class="product-review-item">
                <h2>レビュータイトル</h2>
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
                        
				          <c:forEach var="review" items="${ reviewList }">
	                            <div class="product-review">
	                                <div class="product-review-item">
	                                    <h2>評価</h2>
	                                    <h2>タイトル</h2>
	                                    <h2>内容</h2>
	                                </div>
	                                <div class="product-review-star">
	                                    <p>${ review.review_rating }</p>
	                                    <p>${ review.review_title }</p>
	                                    <p>${ review.review_text }</p>
	                                </div>
	                            </div>				         	
				            </c:forEach>
                        </div>
                        <!-- ↑↑最初隠したいコンテンツ ↑↑-->
                    </div>
                </details>

                <!-- <label for="label1">▼ もっと見る</label> -->
                <!-- <input type="checkbox" id="label1" class="switch" /> -->



            </div>

            <div class="product-button">
            	<%--
            	
                <input class="return-btn" type="submit" value="戻る">
<<<<<<< HEAD
                 <form  action="Product_shopcart" method="post">
                 <input type="hidden" name="shopCartName" value="${ item.id }">
			        <button type="submit"><カートに入れる</button>
			      </form>
                <!-- <a href="Product_shopcart?id=${ item.id }" class="cart-btn">カートに入れる</a> -->
=======
            	 --%>
            	<a href="Product_list" class="cart-btn">一覧に戻る</a>
            	<form action="Product_shopcart" method="post">
            		<input type="hidden" value="${ item.id }" name="shopCart">
	                <button class="cart-btn" type="submit">カートに入れる</button>
            	</form>
<!-- >>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git -->
                <%--><input class="cart-btn" type="submit" value="カートに入れる"> --%>
            </div>

          <!-- カテゴリ -->
    <h2 class="category">Category</h2>
    <div class="category-list">
      <!-- 椅子 -->
      <div class="category-item">
        <a href="javascript:popup_open_chair();">
          <figure>
            <img src="assets/img/monotone_chair1.jpg" alt="">
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
                <a href="Product_list">
                  <img src="assets/img/monotone_chair1.jpg" alt="">
                  <p>モノトーン</p>
                </a>
              </li>
              <li class="popup-list">
                <a href="Product_list">
                  <img src="assets/img/country_chair1.jpg" alt="">
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
            <img src="assets/img/country_table.jpg" alt="">
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
                <a href="Product_list">
                  <img src="assets/img/monotone_table.jpg" alt="">
                  <p>モノトーン</p>
                </a>
              </li>
              <li class="popup-list">
                <a href="Product_list">
                  <img src="assets/img/country_table.jpg" alt="">
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
            <img src="assets/img/country_light1.jpg" alt="">
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
                <a href="Product_list">
                  <img src="assets/img/monotone_lighit1.jpg" alt="">
                  <p>モノトーン</p>
                </a>
              </li>
              <li class="popup-list">
                <a href="Product_list">
                  <img src="assets/img/country_light1.jpg" alt="">
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
            <img src="assets/img/monotone_deskbord.jpg" alt="">
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
                <a href="Product_list">
                  <img src="assets/img/monotone_deskbord.jpg" alt="">
                  <p>モノトーン</p>
                </a>
              </li>
              <li class="popup-list">
                <a href="Product_list">
                  <img src="" alt="">
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
            <img src="assets/img/country_clock1.jpg" alt="">
          </figure>
          <p>雑貨</p>
        </a>
      </div>
      <div id="popup-overlay-goods">
        <div id="popup-window-goods" class="popup-window">
          <section class="popup-header">
            <h2>雑貨のカテゴリー</h2>
            <div class="popup-close">
              <a href="javascript:popup_close_goods();">×</a>
            </div>
          </section>
          <div class="popup-body">
            <!-- <p>※ポップアップに表示する内容はこちらに記述します。</p> -->
            <ul>
              <li class="popup-list">
                <a href="Product_list">
                  <img src="assets/img/monotone_clock1.jpg" alt="">
                  <p>モノトーン</p>
                </a>
              </li>
              <li class="popup-list">
                <a href="Product_list">
                  <img src="assets/img/country_clock1.jpg" alt="">
                  <p>カントリー風</p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      </div>
            <button id="scroll-to-top-btn"><img class="page-top-img" src="assets/img/page-top.png" alt=""></button>
    </main>

    <!-- footer -->
    <footer>
        <!-- 店舗 -->
        <div class="footer-aligned">
            <a href="Footer_shop" class="footer-store">
                <figure>
                    <img src="assets/img/footer_store.png" alt="">
                </figure>
                <p>店舗</p>
            </a>
            <div></div>
            <!-- 商品 -->
            <a href="Footer_product" class="footer-shopping">
                <figure>
                    <img src="assets/img/footer_shopping.png" alt="">
                </figure>
                <p>商品</p>
            </a>
            <!-- サービス -->
            <a href="Footer_service" class="footer-service">
                <figure>
                    <img src="assets/img/footer_service.png" alt="">
                </figure>
                <p>サービス</p>
            </a>
            <!-- お問い合わせ -->
            <a href="Footer_inquiry" class="footer-support">
                <figure>
                    <img src="assets/img/footer_service.png" alt="">
                </figure>
                <p>お問い合わせ</p>
            </a>
            <!-- サイトについて -->
            <a href="Footer_about_Inair" class="footer-site">
                <figure>
                    <img src="assets/img/footer_site.png" alt="">
                </figure>
                <p>Inairについて</p>
            </a>
        </div>
    </footer>
</body>

</html>