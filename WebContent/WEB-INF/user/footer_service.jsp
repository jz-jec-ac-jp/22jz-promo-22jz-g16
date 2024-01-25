<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="assets/css/style.css">
	<title>サービス</title>
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
        <li>サービス</li>
      </ol>
    </nav>
    
    <!-- ここから下 -->
    <div class="footer_service">
    <!-- 初めての方へ -->
	    <div class="first_time_users">
		    <h1 class="beginner's_guide">初めての方へ</h1>
		    <p>初心者歓迎！</p>
	    </div>
	<!-- サイトの使い方 -->
	    <div class="how_to">
		    <h1 class="how_to_use">このサイトの使い方</h1>
		    <p>こうやって使ってね</p>
	    </div>
    <!-- 質問 -->
	    <h1 class="service_title">よくある質問</h1>
	    <div class="service_question">
		    <h2 class="service_q">Q.クレジットカードは使えますか？</h2>
		    <p class="service_a">A.VISA、MastarCard、JCB、AMEXなどのクレジットカードをご利用いただけます。一部ご利用できないカードがございますので、お問い合わせの際に確認させていただきます。</p>
	    </div>
	    <div class="service_question">
		    <h2 class="service_q">Q.送料はいくらかかりますか？</h2>
		    <p class="service_a">A.離島などの地域に関わらず、日本国内であれば一律500円になります。</p>
	    </div>
	    <div class="service_question">
		    <h2 class="service_q">Q.納品までの期間はどのくらいかかりますか？</h2>
		    <p class="service_a">A.通常、ご注文から3日以内に納品させていただいております。ただし、地域や天候、繁盛期によっては前後する可能性がございます。</p>
	    </div>
	    <div class="service_question">
		    <h2 class="service_q">Q.返品は可能ですか？</h2>
		    <p class="service_a">A.タグの有無によっては返品・交換の対象外となることがあります。もし、商品の破損などがあった場合は交換・返金にて対応をさせていただきます。オンラインショップと実店舗は管理体制が異なりますので、ご購入された店舗にお問い合わせをお願いいたします。</p>
	    </div>
	    <div class="service_question">
		    <h2 class="service_q">Q.組み立て・設置はしてくれますか？</h2>
		    <p class="service_a">A.照明、収納家具については組み立てサービスを行っております。</p>
	    </div>
	    <div class="service_question">
		    <h2 class="service_q">Q.注文後にキャンセルすることは可能ですか？</h2>
		    <p class="service_a">A.出荷準備前（注文誤訳30分以内）のご注文であればキャンセル可能です。お早めにご連絡ください。</p>
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