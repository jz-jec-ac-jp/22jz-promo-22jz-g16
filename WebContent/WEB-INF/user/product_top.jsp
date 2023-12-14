<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>トップページ</title>
  <link rel="stylesheet" href="/assets/css/style.css">
  <script src="/assets/js/humberger.js"></script>
</head>
<body>
<!-- header -->
<header>
  <div class="head">

    <nav class="nav">
      <ul>
        <li><a href="/user/purchase_favorite/index.html">お気に入り</a></li>
        <li><a href="/user/purchase_history/index.html">商品履歴</a></li>
      </ul>
    </nav>
    <button type="button" id="navbtn" onclick="navClick()"></button>

    <div class="hum"></div>
      <!-- ハンバーガーメニュー -->
      <!-- これはimg画像じゃなくてjavascriptでつくる -->
      <!-- <div class="hamburger"> -->
      <!-- <a class="humberger" href="#">
          <img src="/assets/img/header_humbergermenu.png" alt="">
      </a> -->
      <!-- </div> -->
      <!-- ユーザーアイコン -->
      <a class="user-icon" href="/user/login/index.html">
          <img src="/assets/img/header_user.png" alt="">
      </a>
      <!-- お店のロゴ -->
      <a class="shop-logo" href="#">
          <!-- <img src="/assets/img/header_title.png" alt=""> -->
          <p>Inair</p>
      </a>
      <!--お気に入りアイコン  -->
      <a class="favorite-icon" href="/user/purchase_favorite/index.html">
          <img src="/assets/img/header_favorite.png" alt="">
      </a>
      <!-- カートアイコン -->
      <a class="cart-icon" href="/user/product_shopcart/index.html">
          <img src="/assets/img/header_cart.png" alt="">
      </a>
  </div>
  <!-- 検索アイコン -->
  <form class="search-form" action="get" href="#">
      <!-- <input class="search-icon" type="image" src="/assets/img/header_search.png" alt=""> -->
      <input type="image" class="search-icon" src="/assets/img/header_search.png" alt="">
      <!-- 検索ボックス -->
      <input type="search" class="search-box" placeholder="入力してください">
  </form>
  <!-- <span class="material-symbols-outlined">
      search
  </span> -->
</header>

<main>
  <!--パンくずリスト-->
  <nav>
    <ol class="breadcrumb">
      <li><a href="/">ホーム</a></li>
      <li><a href="/.../">2層目</a></li>
      <li>新規会員登録</li>
    </ol>
  </nav>
  <!-- キービジュアル -->
  <!-- <div class="key-visuals"></div> -->
  <div class="container">
    <img class="image" src="/assets/img/key.jpg" />
    <img class="image" src="/assets/img/key02.jpg"/>
    <img class="image" src="/assets/img/key03.jpg" />
  </div>
  <!-- お店について -->
<div class="store-explain">
    <p>
      創立5周年 <br>
      東京都豊島区に3店舗を構える <br>
      十店舗の場所　○○区 <br>
      お店の特徴お店の特徴
    </p>
  
    <p>
      モノトーンとカントリー風デザインを売っている <br>
      広くない空間でも低価格でインテリアが楽しめます <br>
    </p>
</div>

  <div class="key-store">
    <figure>
      <img src="/assets/img/key.jpg" class="key-left" alt="">
    </figure>
    <p>
      説明は仮。表示の仕方も変えるかも <br>
      モノトーン風家具の特徴は、シンプルな配色であるためあらゆるスタイルと相性が良く、お好きな雰囲気をつくれます。モノトーンをベースにナチュラルな雰囲気からエレガントな雰囲気までコーディネートできるため、模様替えしやすいスタイルです。
    </p>
    

    <figure>
      <img src="/assets/img/key02.jpg" class="key-right" alt="">
    </figure>
    <p>
      カントリー風家具の特徴は、使い込むほど風合いが生まれて、インテリアと毎日の暮らしとがなじみます。カフェ風のインテリアなど、テイストの異なる家具とも相性がよく、やさしい存在感を放ちます。
    </p>

  </div>
  <!-- カテゴリ -->
  <h2 class="category">Category</h2>
  <div class="category-list">
    <!-- 椅子 -->
    <div class="category-item">
      <figure>
        <img src="/assets/img/chair.jpg" alt="">
      </figure>
      <p>椅子</p>
    </div>
    <!-- 机 -->
    <div class="category-item">
      <figure>
        <img src="/assets/img/table.jpg" alt="">
      </figure>
      <p>机</p>
    </div>
    <!-- 照明 -->
    <div class="category-item">
      <figure>
        <img src="/assets/img/light.jpg" alt="">
      </figure>
      <p>照明</p>
    </div>
    <!-- 収納 -->
    <div class="category-item">
      <figure>
        <img src="/assets/img/storage.jpg" alt="">
      </figure>
      <p>収納</p>
    </div>
  </div>
    <!-- ランキング -->
    <h2 class="ranking">Ranking</h2>
    <div class="ranking-list">
      <div class="ranking-item">
        <figure>
          <img src="/assets/img/light.jpg" alt="">
        </figure>
        <p>照明</p>
        <p>1位</p>
      </div>
      <div class="ranking-item">
        <figure>
          <img src="/assets/img/table.jpg" alt="">
        </figure>
        <p>机</p>
        <p>2位</p>
      </div>
      <div class="ranking-item">
        <figure>
          <img src="/assets/img/table.jpg" alt="">
        </figure>
        <p>机</p>
        <p>2位</p>
      </div>
      <div class="ranking-item">
        <figure>
          <img src="/assets/img/table.jpg" alt="">
        </figure>
        <p>机</p>
        <p>2位</p>
      </div>
      <div class="ranking-item">
        <figure>
          <img src="/assets/img/table.jpg" alt="">
        </figure>
        <p>机</p>
        <p>2位</p>
      </div>
      <div class="ranking-item">
        <figure>
          <img src="/assets/img/table.jpg" alt="">
        </figure>
        <p>机</p>
        <p>2位</p>
      </div>
    </div>
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
</main>
    <!-- footer -->
    <footer>
      <!-- 店舗 -->
      <div class="footer-aligned">
      <a href="#" class="footer-store">
          <figure>
              <img src="/assets/img/footer_store.png" alt="">
          </figure>
          <p>店舗</p>
      </a>
      <div></div>
          <!-- <div class="footer-div"></div> -->
          <!-- 商品 -->
          <a href="#" class="footer-shopping">
              <figure>
                  <img src="/assets/img/footer_shopping.png" alt="">
              </figure>
              <p>商品</p>
          </a>
          <!-- サービス -->
          <a href="#" class="footer-service">
              <figure>
                  <img src="/assets/img/footer_service.png" alt="">
              </figure>
              <p>サービス</p>
          </a>
          <!-- お問い合わせ -->
          <a href="#" class="footer-support">
              <figure>
                  <img src="/assets/img/footer_service.png" alt="">
              </figure>
              <p>お問い合わせ</p>
          </a>
          <!-- サイトについて -->
          <a href="#" class="footer-site">
              <figure>
                  <img src="/assets/img/footer_site.png" alt="">
              </figure>
              <p>Inairについて</p>
          </a>
        </div>
    </footer>

</body>
</html>