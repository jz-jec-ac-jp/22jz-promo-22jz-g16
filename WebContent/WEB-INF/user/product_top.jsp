<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>トップページ</title>
  <link rel="stylesheet" href="assets/css/style.css">
  <script src="assets/js/humberger.js"></script>
  <script src="assets/js/top-page.js" defer></script>
  <script src="assets/js/toppage-animation.js"></script>
  <script src="assets/js/header-anim.js"></script>
  <script src="assets/js/toppage-animation.js"></script>
  <script src="assets/js/page-animatiojn.js"></script>
  <script src="assets/js/top-category.js"></script>

  <!-- animate.css -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css" />
  <!-- wow.js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>

</head>

<body>

  <script>
    new WOW().init();
  </script>
  <!-- header -->
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
              <li><a href="Product_login">ログイン</a></li>]
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

  <main class="main">

    <!--パンくずリスト-->
    <nav>
      <ol class="breadcrumb">
        <li><a href="/user/product_top/">ホーム</a></li>
        <li></li>
      </ol>
    </nav>
    <!-- キービジュアル -->
    <div class="container">
      <img class="image" src="assets/img/key.jpg" />
      <img class="image" src="assets/img/key02.jpg" />
      <img class="image" src="assets/img/key03.jpg" />
    </div>
    <div class="key-store">
      <!-- お店について -->
      <div class="store-explain">
        <h1 class="top-store">Inair</h1>
        <p class="store-description">
          自分好みに空間全体を彩ってほしい <br> という思いから、 <br> 装飾を表す「<span class="description"> Interior </span>」と <br> 空間を表す「 <span
            class="description"> air </span>」を掛け合わせて <br>「<span class="description"> Inair </span>」というサイト名にしました
        </p>

        <h1>１、スタイルを選ぶ</h1>

        <p class="store-design">
          当店では、「<span class="description">モノトーン風デザイン</span>」の家具と <br>「<span
            class="description">カントリー風デザイン</span>」の家具を売っています<br>
          <span class="description-border">広くない空間でも低価格でインテリアが楽しめます</span>
        </p>
      </div>

      <div class="store">
        <div class="store-img">
          <figure>
            <img src="assets/img/key.jpg" class="fadein key-left wow animated fadeInUp" alt="">
          </figure>
          <p class="top-store-first">
            モノトーン風家具の特徴は、シンプルな配色であるため、あらゆるスタイルと相性が良くお好きな雰囲気をつくれます。モノトーンをベースにナチュラルな雰囲気からエレガントな雰囲気までコーディネートできるため、模様替えしやすいスタイルです。
          </p>
        </div>
  
        <div class="store-img">
          <figure>
            <img src="assets/img/key02.jpg" class="fadein key-right  wow animated fadeInUp" alt="">
          </figure>
          <p class="top-store-second">
            カントリー風家具の特徴は、使い込むほど風合いが生まれてインテリアと毎日の暮らしとがなじみます。カフェ風のインテリアなど、テイストの異なる家具とも相性がよくやさしい存在感を放ちます。北欧風なデザインが好きな方におすすめです。
          </p>
        </div>
      </div>

      <h1>２、家具を選ぶ</h1>
      <p class="interior-description">5種類の家具からお選びください</p>
      <!-- 写真スライド -->
      <div class="wrap-product slide-paused  wow animated fadeInUp" ontouchstart="">
         	<ul class="slideshow">
          <c:forEach var="item" items="${ list }">
	          <li>
		          <a class="animation_img" href="Product_detail?id=${ item.id }">       
		            <div class="goods-item content-hover ">
			            <div class="imgContents">
				            <c:forEach var="img" items="${ item.imgUrl }">
					              <figure>
					                <img class="" src="${ img.img_url }" alt="">
					              </figure>
				              </c:forEach>
			            </div>
		              <p class="ad-productname">${ item.product_name }</p>
		              <p class="price">値段：${ item.product_price }円</p>
		            </div>
		          </a>
	          </li>
	       </c:forEach>
	      </ul>
	   </div> 

      <h1>サービス</h1>
      <p class="service">一人暮らしの方でも安心してご利用いただけます</p>
      <div class="furniture-delivery  wow animated fadeInUp">
        <div class="furniture-link">
          <figure>
            <img src="assets/img/furniture.png" alt="">
          </figure>
          <p class="furniture">家具の組み立て無料</p>
        </div>

        <div class="delivery-link">
          <figure>
            <img src="assets/img/delivery.png" alt="">
          </figure>
          <p class="delivery">配送料金一律500円</p>
        </div>
      </div>


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
                  <img src="assets/img/country_deskbord.jpg" alt="">
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


    <!-- ランキング -->
    <h2 class="ranking">Ranking</h2>
    <ul class="ranking-list">
      <li class="ranking-item">
        <figure>
          <img src="assets/img/monotone_chair1.jpg" alt="">
        </figure>
        <p>モノトーン椅子</p>
        <!-- <p>1位</p> -->
      </li>
      <li class="ranking-item">
        <figure>
          <img src="assets/img/country_chair1.jpg" alt="">
        </figure>
        <p>カントリー椅子</p>
        <!-- <p>2位</p> -->
      </li>
      <li class="ranking-item">
        <figure>
          <img src="assets/img/country_clock1.jpg" alt="">
        </figure>
        <p>カントリー時計</p>
        <!-- <p>3位</p> -->
      </li>
      <li class="ranking-item">
        <figure>
          <img src="assets/img/monotone_table.jpg" alt="">
        </figure>
        <p>モノトーン机</p>
        <!-- <p>4位</p> -->
      </li>
      <li class="ranking-item">
        <figure>
          <img src="assets/img/country_light1.jpg" alt="">
        </figure>
        <p>カントリー照明</p>
        <!-- <p>5位</p> -->
      </li>
    </ul>
    <!-- ニュース -->
    <h2 class="news">News</h2>
    <div class="news-list">
      <div class="news-item">
        <p class="item-day">2023/10/30</p>
        <p class="item-contents">新商品が追加されました。</p>
      </div>
      <div class="news-item">
        <p class="item-day">2023/10/30</p>
        <p class="item-contents">新商品が追加されました。</p>
      </div>
      <div class="news-item">
        <p class="item-day">2023/10/30</p>
        <p class="item-contents">新商品が追加されました。</p>
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