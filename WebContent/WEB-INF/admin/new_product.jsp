<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>商品追加</title>
  <link rel="stylesheet" href="../../assets/css/admin.css">
</head>

<body>
  <!-- header -->
  <header>
    <ul class="ad-ul-head">
      <a href="../list/index.html">
        <li class="ad-list">一覧</li>
      </a>
      <a href="#">
        <li class="ad-product">商品管理</li>
      </a>
      <a href="../product_status/index.html">
        <li class="ad-del-list">配送管理</li>
      </a>
      <a href="#">
        <li class="ad-username">ユーザー名</li>
      </a>
    </ul>
  </header>

  <main>


    <div class="ad-product-review">
      <div class="user-header">
        <div class="head">
            <!-- ハンバーガーメニュー -->
            <!-- これはimg画像じゃなくてjavascriptでつくる -->
            <!-- <div class="hamburger"> -->
            <a class="humberger" href="#">
                <img src="../../assets/img/header_humbergermenu.png" alt="">
            </a>
            <!-- </div> -->
            <!-- ユーザーアイコン -->
            <a class="user-icon" href="../login/index.html">
                <img src="../../assets/img/header_user.png" alt="">
            </a>
            <!-- お店のロゴ -->
            <a class="shop-logo" href="../product_top/index.html">
                <!-- <img src="../../assets/img/header_title.png" alt=""> -->
                <p>Inair</p>
            </a>
            <!--お気に入りアイコン  -->
            <a class="favorite-icon" href="../purchase_favorite/index.html">
                <img src="../../assets/img/header_favorite.png" alt="">
            </a>
            <!-- カートアイコン -->
            <a class="cart-icon" href="../product_shopcart/index.html">
                <img src="../../assets/img/header_cart.png" alt="">
            </a>
        </div>
        <!-- 検索アイコン -->
        <form class="search-form" action="get" href="#">
            <!-- <input class="search-icon" type="submit"  alt=""> -->
            <img src="../../assets/img/header_search.png" alt="">
            <!-- 検索ボックス -->
            <input type="search" class="search-box" placeholder="入力してください">
        </form>
        <!-- <span class="material-symbols-outlined">
            search
        </span> -->
      </div>
      
      <div class="user-main">
          <figure>
              <img class="product-img" src="../../assets/img/chair.jpg" alt="">
          </figure>
          <h1 class="product-name">モノトーン椅子</h1>
          <div class="product">
              <p>5000円</p>
              <figure>
                  <img src="../../assets/img/header_favorite.png" alt="">
              </figure>
          </div>
          <div class="product-star">
              <p>☆☆☆☆</p>
              <p>4.0</p>
          </div>
      
          <div class="detail">
              <p>商品コード</p>
              <p>*****</p>
              <p>カラー</p>
              <p>*****</p>
              <p>サイズ</p>
              <p>*****</p>
              <p>重量</p>
              <p>*****</p>
          </div>
      
          <div class="product-content">
              <p>
                  これも仮 <br>
                  背中にフィットし、やさしく身体を支えてくれる背もたれのデザインが魅力のダイニングチェアです。フレームはあたたかみのある風合いのナラ材を落ち着いた印象のBWN色で仕上げており、上品な佇まいです。
              </p>
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
      
          <div class="product-button">
              <input class="return-btn" type="submit" value="戻る">
              <input class="cart-btn" type="submit" value="カートに入れる">
          </div>
      
          <!-- <h2 class="product-relation">椅子の商品</h2>
          <div class="product-list">
              <div class="product-item">
                  <figure>
                      <img src="../../assets/img/key-visuals.png" alt="">
                  </figure>
                  <p>モノトーン椅子</p>
              </div>
              <div class="product-item">
                  <figure>
                      <img src="../../assets/img/key-visuals.png" alt="">
                  </figure>
                  <p>モノトーン椅子</p>
              </div>
          </div> -->
      
            <!-- カテゴリ -->
        <h2 class="category">Category</h2>
        <div class="category-list">
          <!-- 椅子 -->
          <div class="category-item">
            <figure>
              <img src="../../assets/img/chair.jpg" alt="">
            </figure>
            <p>椅子</p>
          </div>
          <!-- 机 -->
          <div class="category-item">
            <figure>
              <img src="../../assets/img/table.jpg" alt="">
            </figure>
            <p>机</p>
          </div>
          <!-- 照明 -->
          <div class="category-item">
            <figure>
              <img src="../../assets/img/light.jpg" alt="">
            </figure>
            <p>照明</p>
          </div>
          <!-- 収納 -->
          <div class="category-item">
            <figure>
              <img src="../../assets/img/storage.jpg" alt="">
            </figure>
            <p>収納</p>
          </div>
        </div>
      </div>
      
      
      <!-- footer -->
      <div class="user-footer">
        <!-- 店舗 -->
        <div class="footer-aligned">
        <a href="#" class="footer-store">
            <figure>
                <img src="../../assets/img/footer_store.png" alt="">
            </figure>
            <p>店舗</p>
        </a>
        <div></div>
            <!-- <div class="footer-div"></div> -->
            <!-- 商品 -->
            <a href="#" class="footer-shopping">
                <figure>
                    <img src="../../assets/img/footer_shopping.png" alt="">
                </figure>
                <p>商品</p>
            </a>
            <!-- サービス -->
            <a href="#" class="footer-service">
                <figure>
                    <img src="../../assets/img/footer_service.png" alt="">
                </figure>
                <p>サービス</p>
            </a>
            <!-- お問い合わせ -->
            <a href="#" class="footer-support">
                <figure>
                    <img src="../../assets/img/footer_service.png" alt="">
                </figure>
                <p>お問い合わせ</p>
            </a>
            <!-- サイトについて -->
            <a href="#" class="footer-site">
                <figure>
                    <img src="../../assets/img/footer_site.png" alt="">
                </figure>
                <p>Inairについて</p>
            </a>
        </div>
      </div>
    
    </div>

    <!-- 検索フォーム -->
        <!-- 準備中と完了のタブ切り替え -->
        <form class="new-search-form" action="get" href="#">
        <div class="ad-tab-switch">
          <a href="#">追加</a>
          <a href="#">編集</a>
        </div>
      <div class="ad-search">
        <input class="new-search-icon" type="image" src="../../assets/img/header_search.png" src="#">
        <!-- 検索ボックス -->
        <input type="search" class="new-search-txtbox" placeholder="キーワードを入力">
      </div>

      <!-- 写真を追加する -->
      <div class="ad-new-img">
        <figure>
          <img src="../../assets/img/add-icon.png" alt="">
        </figure>
        <figure>
          <img src="../../assets/img/chair.jpg" alt="">
        </figure>
        <figure>
          <img src="../../assets/img/chair.jpg" alt="">
        </figure>
        <figure>
          <img src="../../assets/img/chair.jpg" alt="">
        </figure>

      </div>
      <!-- 商品名 -->
      <p class="ad-product-name">商品名</p>
      <input type="text" class="ad-new-productname" placeholder="例）モノトーン椅子">
      <!-- <div class="ad-new-product"> -->
      <!-- 値段 -->
      <div class="ad-value">
        <div class="ad-new-vaca">
          <p>値段</p>
          <input type="number" class="ad-new-value" placeholder="例）3000">
        </div>
        <!-- 個数 -->
        <div class="ad-new-vaca">
          <p>個数</p>
          <input type="number" class="ad-new-num" placeholder="例）50">
        </div>
      </div>
      <!-- 商品内容 -->
      <p class="ad-product-content">商品内容</p>
      <textarea name="contents" class="ad-new-contents" placeholder="商品内容を入力"></textarea>
    </form>
  </main>
</body>

</html>