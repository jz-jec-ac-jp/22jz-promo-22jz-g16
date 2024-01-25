<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>カード画面</title>
    <script src="assets/js/humberger.js"></script>
    <script src="assets/js/top-page.js" defer></script>
    <script src="assets/js/header-anim.js"></script>
    <script src="assets/js/form-aleart.js"></script>

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
              <li class="nav-top"><a href="Product_top">ホーム</a></li>
              <li><a href="Product_login">ログイン</a></li>
              <li><a href="Product_shopcart">カート</a></li>
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
            <h1 class="Inair"><a href="">Inair</a></h1>
            <li class="nav-top"><a href="Product_top">ホーム</a></li>
            <li><a href="Product_login">ログイン</a></li>
            <li><a href="Product_shopcart">カート</a></li>
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
                <li><a href="Puroduct_detail">商品詳細</a></li>
                <li><a href="Product_shopcart">カート</a></li>
                <li><a href="Product_purchase">商品購入</a></li>
                <li>カード</li>
            </ol>
        </nav>
        <div class="card-main">

	            
			<form class="card-form" action="Product_card_check" method="get"><!-- onsubmit="return check()" -->  
                 <button class="select-input-btn" type="button">
                     <select class="paymethood-pulldown text-input-select" name="card_number">
                        <option value="">登録済みカード一覧</option>
	            		<c:forEach var="item" items="${ list }">
		            		<%-- メッセージが存在するときのみ表示 --%>
                          	<option value="${ item.card_number }">${ item.card_number }</option>
		            	</c:forEach>
                     </select>
                 </button>
                 
                 <button type="submit">確定</button>
		    </form>
				    
        
            <form class="card-form" action="#" method="post" ><!-- onsubmit="return check()" -->
                <h1 class="card-logo">Visa</h1>
                <!-- カード番号 -->
                <h2>カード番号（半角）*</h2>
                <input class="card-number text-input" type="text"
                    placeholder="入力してください"  name="card_number">
                <p class="error-message">※入力してください</p>

                <!-- 有効期限 -->
                <h2>有効期限*</h2>
                <div class="expiration">
                    <input class="expiration-month text-input" type="number" placeholder="例）12" name="date_of_expiry">
                    <p class="error-message error-month">※入力してください</p>

                    <p>月　/</p>
                  <!--   <input class="expiration-year text-input" type="number" placeholder="例）27" name="date_of_expiry">
                    <p class="error-message error-year">※入力してください</p>

                    <p>年</p> -->
                </div>
                <!-- 名義人名 -->
                <h2>名義人名（半角ローマ字）</h2>
                <input class="holder-name text-input" type="text" placeholder="入力してください" name="card_nominee">
                <p class="error-message">※入力してください</p>


                <!-- セキュリティ番号 -->
                <h2>セキュリティ番号</h2>
                <input class="security-number text-input" type="number" placeholder="入力してください" name="card-security-number">
                <p class="error-message">※入力してください</p>

                <!-- 確定ボタン -->
                <div class="card-button">
                    
                    <a href="Product_purchase" class="card-return">商品購入画面</a>
                    <input type="submit" class="card-submit" value="次へ" onclick="window.onbeforeunload = null">
                </div>
            </form>
            <!-- エラー文や警告文 <div></div> -->
        </div>
        <button id="scroll-to-top-btn"><img class="page-top-img" src="/assets/img/page-top.png" alt=""></button>

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
    