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
              <h1 class="Inair"><a href="">Inair</a></h1>
              <li><a href="Product_login">ログイン</a></li>
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
            <h1 class="Inair"><a href="Product_top">Inair</a></h1>
            <li><a href="Product_login">ログイン</a></li>
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
    
      </header>

  <main>
    <!--パンくずリスト-->
    <nav>
      <ol class="breadcrumb">
        <li><a href="Product_top">ホーム</a></li>
        <li><a href="Product_list">商品一覧</a></li>
        <li><a href="Product_detail">商品詳細</a></li>
        <li>カート</li>
      </ol>
    </nav>
    <!--商品データ-->
    
     <c:if test="${not empty login}">
         <%-- メッセージが存在するときのみ表示 --%>
         <p>${login}</p>
     </c:if>


	<c:if test="${ empty login }">

    <div class="year-total">
      <h2 class="peace">個数:4個</h2>
      <h2 class="total-pay">合計金額：40,000円(税込)</h2>
    </div>
    <!--商品データ-->
    <div class="cart-product-div">
      <!-- ここから -->
	      
	      <c:forEach var="item" items="${ list }" varStatus="count">
		      <section class="history-product">
		        <p class="us-productname">${ item.product_name }</p>
		        <div class="us-detail-Product-name">
		      <a href="Product_detail?id=${ item.id }" class="imgOverflow">
	            <div class="imgContents">
		            <c:forEach var="img" items="${ item.imgUrl }">
			              <figure>
			                <img class="" src="${ img.img_url }" alt="">
			              </figure>
		              </c:forEach>
	            </div>
			  </a>
		          <div class="introduction-div">
		            <p class="us-product-man">商品コード:${ item.id }</p>
		            
		            <c:forEach var="color" items="${ item.getColorTexts() }">
		            <p class="us-color-size">カラー:${ color.purchase_color }</p>
		            </c:forEach>
		            
		            <br>
		            <c:forEach var="size" items="${ item.size_name }">
			   			<p>サイズ：${ size.size_name }</p>
					</c:forEach>
		           
		            <p class="value">${item.product_price }(税込)</p>
		          </div>
		          <div class="us-detail-peace">
		            <p class="postage">送料:500円</p>
		            <p class="total-value">小計:${item.product_price }円(税込)</p>
		          <form action="#" method="post" id="form_product_shopcart">
			          <label for="count" id="label_count">個数 : ${ productCount[count.index] }</label>
			          <input class="purchase_count" type="number" name="count" min="1"  value="1">
			          <input type="hidden" name="mode" value="change">
			          <input type="hidden" name="id" value="${ item.id}">
		      		<button class="change_button" type="submit">個数変更</button>
		          </form>
		      	
		      		
		      		<form action="#">
		      		<button class="" onclick="removeExample(this)">削除</button>
		      		</form>
		          <!--  
		          <p class="peace">個数</p>
		          -->
		          </div>
		        </div>
		      </section>
	      </c:forEach>
	      </div>
	      
	      
	            
      
     <!--  <c:forEach var="item" items="${ list }">
      <a href="Product_detail?id=${ item.id }">
      <section class="history-product">
        <p class="us-productname">${ item.product_name }</p>
        <div class="us-detail-Product-name">
          <figure class="purchase-product">
            <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
          </figure>
          <div class="introduction-div">
            <p class="us-product-man">商品コード:${ item.id }</p>
            
            
            <div class="color-column">
            <p>カラー：</p>
            <c:forEach var="color" items="${ item.getColorTexts() }">
            <p class="us-color-size">${ color.purchase_color }</p>
            </c:forEach>
            </div>
            
            <br><p>サイズ:</p>
            <p class="value">${item.product_price }(税込)</p>
          </div>
          <p class="peace">個数 ${item.product_stock}</p>
          <div class="us-detail-peace">
            <p class="postage">送料:500円</p>
            <p class="total-value">小計:${item.product_price }(税込)</p>
          </div>
        </div>
      </section>
      </a>
      </c:forEach>
      
	<div class="product-button">
       -->
	<!-- 
>>>>>>> branch 'main' of https://github.com/jz-jec-ac-jp/22jz-promo-22jz-g16.git
	
	    <div class="year-total">
	      <h2 class="peace">個数:4個</h2>
	      <h2 class="total-pay">合計金額：40,000円(税込)</h2>
	    </div>
	    <!--商品データ-->
	    <!-- <div class="cart-product-div"> -->
	      <!-- ここから -->
	      
	     
		<div class="product-button">
	       <a href="Product_top" class="cart-btn">戻る</a>
	       <a href="Product_purchase" class="cart-btn">確認画面へ進む</a>
	     </div>
	</c:if>

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
                  <a href="Product_list">
                    <img src="assets/img/chair.jpg" alt="">
                    <p>モノトーン</p>
                  </a>
                </li>
                <li class="popup-list">
                  <a href="Product_list">
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
                  <a href="Product_list">
                    <img src="assets/img/table.jpg" alt="">
                    <p>モノトーン</p>
                  </a>
                </li>
                <li class="popup-list">
                  <a href="Product_list">
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
                  <a href="Product_list/index">
                    <img src="assets/img/light.jpg" alt="">
                    <p>モノトーン</p>
                  </a>
                </li>
                <li class="popup-list">
                  <a href="Product_list">
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
                  <a href="Product_list">
                    <img src="assets/img/storage.jpg" alt="">
                    <p>モノトーン</p>
                  </a>
                </li>
                <li class="popup-list">
                  <a href="Product_list">
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
                <a href="Product_list">
                  <img src="assets/img/chair.jpg" alt="">
                  <p>モノトーン</p>
                </a>
              </li>
              <li class="popup-list">
                <a href="Product_list">
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