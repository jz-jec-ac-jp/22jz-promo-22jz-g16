<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="assets/css/style.css">
	<title>お問い合わせ</title>
	<script src="assets/js/humberger.js"></script>
	<script src="assets/js/top-page.js" defer></script>
	<script src="assets/js/header-anim.js"></script>
	<script src="assets/js/form-aleart.js"></script>
	<script src="assets/js/fonst-count.js"></script>
</head>
<body>
<!-- header -->
    <header class="header">
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
          <a class="favorite-icon-anim" href="Purchase_favorite">
            <img src="assets/img/header_favorite.png" alt="">
          </a> 
          <!-- カートアイコン -->
          <a class="cart-icon-anim" href="Product_shopcart">
            <img src="assets/img/header_cart.png" alt="">
          </a> 
    
     <nav class="nav">
            <h1 class="Inair"><a href="">Inair</a></h1>
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
                <li>お問い合わせ</li>
            </ol>
        </nav>
        <!-- ここから -->
        <div class="footer_inquiry">
        
	        <!-- お問い合わせフォーム -->
	        <form class="inquiry_form" action="#" method="post">
		        <!-- 注文番号 -->
		        <h2 class="order_number">注文番号</h2>
		        <input name="order_number" class="order_number_txt text_input" type="text" placeholder="番号を入力してください"  pattern=".*\S+.*">
		        <!-- 商品コード -->
		        <h2 class="product_cord">商品コード</h2>
		        <input name="product_cord" class="product_cord_txt text_input" type="text" placeholder="コードを入力してください"  pattern=".*\S+.*">
	        </form> 
        
	        <!-- 投稿テキスト -->
		     <div class="write-div">
		           <h2>お問い合わせ内容</h2>
		           <textarea class="text-area review-text"  name="review-text" onKeyUp="countLength(value, 'textlength4');"
		            placeholder="入力してください"></textarea>
		           <!-- 
		           <p class="error-message">※入力してください</p>
		           <p id="textlength4">0</p>   
		            -->
		     </div>
		     <input class="confirm-button" type="submit" value="送信する">
        </div>        
	    <!-- ここまで -->
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