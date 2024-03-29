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
    <script src="assets/js/humberger.js"></script>
    <script src="assets/js/top-page.js" defer></script>
    <script src="assets/js/header-anim.js"></script>
    <script src="assets/js/form-aleart.js"></script>
    <script src="assets/js/fonst-count.js"></script>

    <title>新規アカウント登録画面</title>
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
        <!--main-->
        <!--パンくずリスト-->
        <nav>
            <ol class="breadcrumb">
                <li><a href="/user/product_top/">ホーム</a></li>
                <li>新規会員登録</li>
            </ol>
        </nav>
        
        <h1 class="new-account-title">新規会員登録</h1>
        <div class="new-account">
            <!--新規会員登録フォーム-->

            <c:if test="${not empty nameOneFalse}">
	            <%-- メッセージが存在するときのみ表示 --%>
	            <p  class="errorMesage">${nameOneFalse}</p>
            </c:if>
            
            <c:if test="${not empty nameTweFalse}">
	            <%-- メッセージが存在するときのみ表示 --%>
	            <p class="errorMesage">${nameTweFalse}</p>
            </c:if>
            
            <c:if test="${not empty mailFalse}">
	            <%-- メッセージが存在するときのみ表示 --%>
	            <p class="errorMesage">${mailFalse}</p>
            </c:if>
            
            <c:if test="${not empty paswardFalse}">
	            <%-- メッセージが存在するときのみ表示 --%>
	            <p class="errorMesage">${paswardFalse}</p>
            </c:if>
            
            <c:if test="${not empty telFalse}">
	            <%-- メッセージが存在するときのみ表示 --%>
	            <p class="errorMesage">${telFalse}</p>
            </c:if>
            
            <c:if test="${not empty prefecturFalse}">
	            <%-- メッセージが存在するときのみ表示 --%>
	            <p class="errorMesage">${prefecturFalse}</p>
            </c:if>
            
            <c:if test="${not empty streetAdressFalse}">
	            <%-- メッセージが存在するときのみ表示 --%>
	            <p class="errorMesage">${streetAdressFalse}</p>
            </c:if>

            <form class="newaccount-form" action="#" method="post"> <!--  onsubmit="return check();" -->
	            <c:if test="${not empty msg}">
		            <%-- メッセージが存在するときのみ表示 --%>
		            <p class="errorMesage">${msg}</p>
	            </c:if>
                <!--氏名-->
                <h2 class="us-login-id">氏名</h2>
                <!--姓（カナ）名前（かな）-->
                <h2 class="name-kana">姓（カナ）名前（カナ）</h2>
                <input name="name_kana"  class="name-kana-txt text-input" type="text" placeholder="入力してください"  pattern=".*\S+.*" value="${ name_kana }">
                <!-- 
                <p class="error-message">※</p>
                 -->

                <!--姓（漢字）名前（漢字）-->
                <h2 class="name-kanji">姓（漢字）名前（漢字）</h2>
                <input name="name_kanji" class="name-kanji-txt text-input" type="text" placeholder="入力してください" value="${ name_kanji }">
                <!-- 
                <p class="error-message">※</p>
                 -->

                <!--ログインID入力-->
                <h2 class="us-login-id">ログインID</h2>
                <input name="mail_adress" class="id-txt text-input" type="email" name="login-id" placeholder="入力してください"  value="${ mail_adress }">
                <!-- 
                <p class="error-message">※</p>
                 -->

                <input class="id-txt text-input" type="email" name="login-id" placeholder="確認用メールアドレス欄"  value="${ mail_adress }">
                <!-- 
                <p class="error-message">※</p>
                 -->

                <!--パスワード-->
                <h2 class="us-login-password">パスワード</h2>
                <input name="us_pasward" class="password-txt text-input" type="password" name="password-txt" placeholder="パスワード入力欄" onKeyUp="countLength(value, 'textlength0');"  value="${ us_pasward }">
                <!-- 
                <p class="error-message">※</p>
                <p id="textlength0">0</p>
                 -->

                <input class="password-txt text-input" type="password" name="password-txt" placeholder="確認用パスワード欄"  value="${ us_pasward }">
             
                <!--電話番号-->
          

                <h2 class="telephone-number">電話番号</h2>
                <input name="telNumber" class="telephone-txt text-input" type="text" placeholder="携帯用"  value="${ tel_number }">

               
         		
         		<c:if test="${ not empty us_adressError }">
					<p class="errorMessage">${us_adressError }</p>         		
         		</c:if>
                <!--住所１（市区町村）-->
                <h2 class="addres-txt">住所１(市区町村)</h2>
                <button class="select-input-btn" type="button" onclick="check_select()">
                    <select class="text-input-select" name="us_prefectur">
                        <option value="">お選びください</option>
                        <option value="北海道">北海道</option>
                        <option value="青森">青森</option>
                        <option value="岩手">岩手</option>
                        <option value="宮城">宮城</option>
                        <option value="秋田">秋田</option>
                        <option value="山形">山形</option>
                        <option value="福島">福島</option>
                        <option value="茨城">茨城</option>
                        <option value="栃木">栃木</option>
                        <option value="群馬">群馬</option>
                        <option value="埼玉">埼玉</option>
                        <option value="千葉">千葉</option>
                        <option value="東京都">東京都</option>
                        <option value="神奈川">神奈川</option>
                        <option value="山梨">山梨</option>
                        <option value="長野">長野</option>
                        <option value="新潟">新潟</option>
                        <option value="富山">富山</option>
                        <option value="石川">石川</option>
                        <option value="福井">福井</option>
                        <option value="岐阜">岐阜</option>
                        <option value="静岡">静岡</option>
                        <option value="愛知">愛知</option>
                        <option value="三重">三重</option>
                        <option value="滋賀">滋賀</option>
                        <option value="京都府">京都府</option>
                        <option value="大阪府">大阪府</option>
                        <option value="兵庫">兵庫</option>
                        <option value="奈良">奈良</option>
                        <option value="和歌山">和歌山</option>
                        <option value="鳥取">鳥取</option>
                        <option value="島根">島根</option>
                        <option value="岡山">岡山</option>
                        <option value="広島">広島</option>
                        <option value="山口">山口</option>
                        <option value="徳島">徳島</option>
                        <option value="香川">香川</option>
                        <option value="愛媛">愛媛</option>
                        <option value="高知">高知</option>
                        <option value="福岡">福岡</option>
                        <option value="佐賀">佐賀</option>
                        <option value="長崎">長崎</option>
                        <option value="熊本">熊本</option>
                        <option value="大分">大分</option>
                        <option value="宮崎">宮崎</option>
                        <option value="鹿児島">鹿児島</option>
                        <option value="沖縄">沖縄</option>
                    </select>
                </button>
                <!-- 
                <p class="error-message-select">※</p>
                 -->

                <input id="name" class="telephone-txt text-input" type="text" name="us_adress" placeholder="市区町村を入力"  value="${ us_adress }">
                <!-- 
                <p class="error-message">※</p>
                 -->

                <!--都道府県-->
                <h2 class="prefectur">都道府県(番地)</h2>
                <input class="prefectur-txt text-input" type="text" name="street_address" placeholder="住所２（番地）"  value="${ street_address }">
                <!-- 
                <p class="error-message">※</p>
                 -->
                <!--確定ボタン-->
                <input class="confirm-button" type="submit" value="確定">
                <!-- 
                <button type="submit">確定</button>
                 -->

            </form>
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