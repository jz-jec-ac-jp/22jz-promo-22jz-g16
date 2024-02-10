<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>商品追加</title>
  <link rel="stylesheet" href="assets/css/admin.css">
  <script src="assets/js/humberger.js"></script>
  <!-- <script src="assets/js/top-page.js" defer></script> -->
  <!-- <script src="assets/js/header-anim.js"></script> -->
  <!-- <script src="assets/js/top-category.js"></script> -->
  <script src="assets/js/review-animation.js"></script>

</head>

<body>
  <!-- header -->
  <header>
    <ul class="ad-ul-head">
      <a href="Admin_productList">
        <li class="ad-list">一覧</li>
      </a>
      <a href="Admin_newProduct">
        <li class="ad-product">商品管理</li>
      </a>
      <a href="Admin_productStatus">
        <li class="ad-del-list">配送管理</li>
      </a>
      <a href="Admin_login">
        <li>ログイン画面</li>
      </a>
        <li class="ad-username">${ loginUserId }</li>
    </ul>
  </header>

  <main>


    <div class="ad-product-review">
      <div class="user-header">
         <div class="head">
            <!-- ハンバーガーメニュー -->
            <!-- </div> -->
            <!-- お店のロゴ -->
            <a class="shop-logo" href="">
                <p>Inair</p>
            </a>
            <div class="head-right">
                <!-- ユーザーアイコン -->
                <a class="user-icon" href="">
                    <img src="assets/img/header_user.png" alt="">
                </a>
                <!--お気に入りアイコン  -->
                <a class="favorite-icon" href="">
                    <img src="assets/img/header_favorite.png" alt="">
                </a>
                <!-- カートアイコン -->
                <a class="cart-icon" href="">
                    <img src="assets/img/header_cart.png" alt="">
                </a>

                <button type="button" id="navbtn" onclick="navClick()"></button>

            </div>
        </div>
        <!-- 検索アイコン -->
        <form class="search-form" action="get" href="">
            <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
            <!-- 検索ボックス -->
            <input type="search" class="search-box" placeholder="入力してください">
        </form>


        <div id="header-animation" class="header-anim">
            <!-- 検索アイコン -->
            <form class="search-form-anim" action="get" href="">
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


            <button type="button" id="navbtn" onclick="navClick()"></button>
        </div>
      </div>


      <div class="user-main">
         <!--パンくずリスト-->
        <nav>
            <ol class="breadcrumb">
                <li><a href="user/product_top/">ホーム</a></li>
                <li><a href="user/product_list/">商品一覧</a></li>
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
        <h1 class="detail-product-name">${ item.product_name }</h1>
        <div class="product">
            <p>${ item.product_price }円</p>
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
            <!-- <button id="scroll-to-top-btn"><img class="page-top-img" src="assets/img/page-top.png" alt=""></button> -->		
            </div>
      </div>


      <!-- footer -->
      <div class="user-footer">
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
      </div>
    </div>

    <!-- 検索フォーム -->
    <!-- 準備中と完了のタブ切り替え -->
      
      <!-- 変更したよーーーーーーーーーーーーーーーー -->
    <form class="search-form" action="#" method="get">
      
      <c:if test="${ not empty nameNull }">
      	<p class="textColor">${ nameNull }</p>
      </c:if>
      
      <c:if test="${ not empty detailNull }">
      	<p class="textColor">${ detailNull }</p>
      </c:if>
      
      <c:if test="${ not empty valuelNull }">
      	<p class="textColor">${ valuelNull }</p>
      </c:if>
      
      <c:if test="${ not empty colorNull }">
      	<p class="textColor">${ colorNull }</p>
      </c:if>
      
      <c:if test="${ not empty sizelNull }">
      	<p class="textColor">${ sizelNull }</p>
      </c:if>
      
      <c:if test="${ not empty nameNull }">
      	<p class="textColor">${ nameNull }</p>
      </c:if>
      
      <c:if test="${ not empty weightNull }">
      	<p class="textColor">${ weightNull }</p>
      </c:if>
      
      <c:if test="${ not empty imgNull }">
      	<p class="textColor">${ imgNull }</p>
      </c:if>
     
      
        <!-- 検索ボックス -->
<!--       <div class="ad-search">
        <input type="search" class="new-search-txtbox" placeholder="キーワードを入力" name="searchProductId">
      
      </div>
      -->
      
        <input class="new-search-icon" type="image" src="assets/img/header_search.png" src="#">
      
      <!-- 
            <select class=" productCategory" name="searchProductId">
             <option value="">商品一覧</option>
   				<%-- メッセージが存在するときのみ表示 --%>
               	<option value="モノトーン風 ダイニングチェアー">モノトーン風 ダイニングチェアー</option>
               	<option value="カントリー風 ダイニングチェアー">カントリー風 ダイニングチェアー</option>
               	<option value="モノトーン風 ダイニングテーブル">モノトーン風 ダイニングテーブル</option>
               	<option value="カントリー風 ダイニングテーブル">カントリー風 ダイニングテーブル</option>
               	<option value="モノトーン風 ペンダントライト">モノトーン風 ペンダントライト</option>
               	<option value="カントリー風 シーリングライト">カントリー風 シーリングライト</option>
               	<option value="モノトーン風 サイドボード">モノトーン風 サイドボード</option>
               	<option value="カントリー風 サイドボード">カントリー風 サイドボード</option>
               	<option value="モノトーン風 壁掛け時計">モノトーン風 壁掛け時計</option>
               	<option value="カントリー風 壁掛け時計">カントリー風 壁掛け時計</option>
               	
				
				
				
          </select>
           -->
	   
          <select class="productCategory" name="searchProductId">
             <option value="">商品一覧</option>
	       		<c:forEach var="item" items="${ itemList }">
		      		<%-- メッセージが存在するときのみ表示 --%>
                  	<option value="${ item.product_name }">${ item.product_name }</option>
		       	</c:forEach>
          </select>
         <c:if test="${ not empty nameError }">
	      	<p class="textColor">${ nameError }</p>
	      </c:if>
           
            
	</form>

	
    <form class="new-search-form" action="#" method="post">
        <!-- <button class="select-input-btn" type="button"> -->
        
       	<select class="" name="productDelete-box">
	           <option value=""></option>
	           <option value="edit">商品削除</option>
	    </select>
          <p class="textColor">※注意</p>
	       <select class="" name="createEdit-box">
	           <option value="create">追加</option>
	           <option value="edit">編集</option>
	       </select>
		    
	     <input type="hidden" name="productIdDelete" value="${ item.id }">
        
          <select class="productCategory" name="category_img">
             <option value="">商品写真一覧</option>
   				<%-- メッセージが存在するときのみ表示 --%>
               	<option value="カントリー椅子">カントリー椅子</option>
               	<option value="モノトーン椅子">モノトーン椅子</option>
               	<option value="カントリー時計">カントリー時計</option>
               	<option value="モノトーン時計">モノトーン時計</option>
               	<option value="カントリー照明">カントリー照明</option>
               	<option value="モノトーン照明">モノトーン照明</option>
               	<option value="カントリー机">カントリー机</option>
               	<option value="モノトーン机">モノトーン机</option>
               	<option value="カントリー棚">カントリー棚</option>
               	<option value="モノトーン棚">モノトーン棚</option>
               	

          </select>
	       <c:if test="${ not empty imgError }">
	      	<p class="textColor">${ imgError }</p>
	      </c:if>
      <!-- </button> -->
      </div>
      <!-- 商品名 -->
      
      <!-- 変更したよーーーーーーーーーーーーーーーー -->
      <input type="hidden" name="idProduct" value="${ item.id }">
      <p class="ad-product-name">商品ID：${ item.id }</p>
      <p>商品名</p>
      <input type="text" class="ad-new-productname" placeholder="例）モノトーン椅子" name="productName" value="${ item.product_name }">
      <!-- <div class="ad-new-product"> -->
      <!-- 値段 -->
      <div class="ad-value">
        <div class="ad-new-vaca">
          <p>値段</p>
          
          <c:if test="${ empty item.product_price }">
          	<input type="number" class="ad-new-value" placeholder="例）3000" name="productValue" value="1">
          </c:if>
          
          <c:if test="${ not empty item.product_price }">          
	          <input type="number" class="ad-new-value" placeholder="例）3000" name="productValue" value="${ item.product_price }">
          </c:if>
        </div>
        <!-- 個数 -->
        <div class="ad-new-vaca">
          <p>個数</p>
          <c:if test="${ empty item.product_stock }">
          	<input type="number" class="ad-new-num" placeholder="例）50" name="productStock" value="1">
          </c:if>
          
          <c:if test="${ not empty item.product_stock }">          
          	<input type="number" class="ad-new-num" placeholder="例）50" name="productStock" value="${ item.product_stock }">
          </c:if>
        </div>
      </div>
      
            <!-- サイズー -->
      <div class="ad-value">
        <div class="ad-new-vaca">
          <p>サイズ</p>
          
            
	       <select class="ad-new-value selectSize" name="productSize">
             <option value="">サイズ一覧</option>
   				<%-- メッセージが存在するときのみ表示 --%>
               	<option value="S">S</option>
               	<option value="M">M</option>
               	<option value="L">L</option>
           </select>
          <!-- 
            <c:forEach var="size" items="${ item.size_name }">
	          <input type="text" class="ad-new-value" placeholder="例）M" name="productSize" value="${ size.size_name }">
	        
	          
			</c:forEach>
			
			<c:if test="${ empty item.size_name }">
				<input type="text" class="ad-new-value" placeholder="例）M" name="productSize" value="${ size.size_name }">
			</c:if>
			 -->
			
        </div>
        <!-- 重量 -->
        <div class="ad-new-vaca">
          <p>重量</p>
           <c:forEach var="weight" items="${ item.weight_name }">
          	<input type="text" class="ad-new-num" placeholder="例）5kg" name="productWeight" value="${ weight.purchase_weight}">
			</c:forEach>
	        <c:if test="${ empty item.weight_name }">
	        	<input type="text" class="ad-new-num" placeholder="例）5kg" name="productWeight" value="${ weight.purchase_weight}">
	        </c:if>
        </div>
        
        
      </div>
        
        <div class="ad-value">
	        <div class="ad-new-vaca">
	          <p>カラー</p>
	          <c:forEach var="color" items="${ item.colorTexts }">
	          <input type="text" class="ad-new-value" placeholder="例）黒" name="productColor" value="${color.purchase_color }">
			  </c:forEach>
			  
			  <c:if test="${ empty item.colorTexts }">
			  	<input type="text" class="ad-new-value" placeholder="例）黒" name="productColor" value="${color.purchase_color }">
			  </c:if>
			  
	        </div>
       		<div class="ad-new-vaca">
          
        </div>
      </div>
      
      <!-- 商品内容 -->
      <p class="ad-product-content">商品内容</p>
      
     
       <textarea class="ad-new-contents" placeholder="商品内容を入力" name="productDetail">${ item.product_detail }</textarea> 
      <button type="submit">確定</button>

    </form>
  </main>
</body>

</html>