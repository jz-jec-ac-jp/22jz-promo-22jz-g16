<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>レビュー画面</title>
    <script src="assets/js/humberger.js"></script>
    <script src="assets/js/top-page.js" defer></script>
    <script src="assets/js/header-anim.js"></script>
    <script src="assets/js/fonst-count.js"></script>
    <script src="assets/js/form-aleart.js"></script>
    <!-- <script src="/assets/js/input-aleart.js" defer></script> -->
    <!-- <script src="/assets/js/page-aleart-check.js"></script> -->


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
    
      </header>

    <main>
        <!--パンくずリスト-->
        <nav>
            <ol class="breadcrumb">
                <li><a href="Product_top">ホーム</a></li>
                <li>レビュー</li>
            </ol>
        </nav>
        <!-- <h1 class="title-review">レビュー</h1> -->
        <!-- 商品データ -->

<!--         <div class="review">
            <img class="review-productimg" src="assets/img/chair.jpg" alt="">
            <h2 class="review-productname">${item.product_name}</h2>
            <!--総合評価-->
<!-- 
            <h2 class="all-evalution">総合評価</h2>
            <div class="evaluation-div">
                <p class="evaluation">3.0</p>
                <p class="evaluation-star">☆☆☆☆☆</p>
 -->
        <div class="review-body">
            <div class="review">
                <img class="review-productimg" src="assets/img/chair.jpg" alt="">
                <h2 class="review-productname">${ item.product_name }椅子</h2>
                
                <!--総合評価-->
                <h2 class="all-evalution">総合評価</h2>
                <div class="evaluation-div">
                    <p class="evaluation">3.0</p>
                    <!-- <p class="evaluation-star">☆☆☆☆☆</p> -->
                    <div class="stars">
                        <span>
                            <input id="review01" type="radio" name="review5" value="5"><label for="review01"
                                onclick="setRating(5)">★</label>
                            <input id="review02" type="radio" name="review4" value="4"><label for="review02"
                                onclick="setRating(4)">★</label>
                            <input id="review03" type="radio" name="review3" value="3"><label for="review03"
                                onclick="setRating(3)">★</label>
                            <input id="review04" type="radio" name="review2" value="2"><label for="review04"
                                onclick="setRating(2)">★</label>
                            <input id="review05" type="radio" name="review1" value="1"><label for="review05"
                                onclick="setRating(1)">★</label>
                        </span>
                    </div>
                </div>

            </div>
            <!--レビュータイトル-->
            <div class="review-div">
                <h2 class="review-title">レビュータイトル</h2>
            </div>
            <form  class="review-send-form" action="#" method="post" name="myForm"><!--  onsubmit="return check();" -->
            	<input type="hidden" name="product_id" value="${ item.id }">
                <div class="customer-review">
                    <!-- <p class="customer-comment">しっかりしている!!</p> -->
                    <input name="review-title" class="text-input customer-comment" type="text" placeholder="入力してください"
                        onKeyUp="countLength(value, 'textlength3');" >
                    <p class="error-message">※入力してください</p>
                    <!-- <p id="textlength3">0</p> -->
    
                </div>
                <!--商品・動画-->
                <h2 class="picture-movie">写真・動画</h2>
                <!-- <input type="file" name="img" value="写真・画像" multiple> -->
    
                <div class="product-photo">
                    <figure>
                        <img src="assets/img/add-icon.png" alt="">
                    </figure>
                    <figure>
                        <img src="assets/img/chair.jpg" alt="">
                    </figure>
                    <figure>
                        <img src="assets/img/chair.jpg" alt="">
                    </figure>
                </div>
   
                <div class="write-div">
                    <h2>レビュー</h2>
                    <input class="text-area review-text" name="review-text" onKeyUp="countLength(value, 'textlength4');"
                        minlength="5" placeholder="入力してください"></input>
                    <p class="error-message">※入力してください</p>
                    <p id="textlength4">0</p>
                </div>
    
                <div class="review-send">
                    <a class="review-product-cart" href="Puroduct_detail">商品詳細ページへいく</a>
                    <!-- 送信アイコン -->
                    <input id="set" class="review-submit-icon" type="image" src="assets/img/send-icon.png" alt="">
                </div>
            </form>
            </div>
            <!-- </div> -->
    
            <button id="scroll-to-top-btn"><img class="page-top-img" src="assets/img/page-top.png" alt=""></button>
        </div>
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