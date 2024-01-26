<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>購入画面</title>
    <script src="assets/js/humberger.js"></script>
    <script src="assets/js/top-page.js" defer></script>
    <script src="assets/js/header-anim.js"></script>
    <script src="assets/js/form-aleart.js"></script>
</head>

<body>
    <div class="animation-bg">
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
                    <li><a href="/user/product_top/">ホーム</a></li>
                    <li><a href="/user/product_list/">商品一覧</a></li>
                    <li><a href="/user/puroduct_detail/">商品詳細</a></li>
                    <li><a href="/user/product_shopcart/">カート</a></li>
                    <li>商品購入</li>
                </ol>
            </nav>
            <!--商品データ-->
            <div class="cart-product-div">
                <div class="year-total">
                    <h2 class="peace">個数:5個</h2>
                    <h2 class="total-pay">合計金額：50,000円(税込)</h2>
                </div>
                
                
                <c:forEach var="item" items="${ list }">
                <a href="Product_detail?id=${ item.id }">
                <section>
                    <p class="us-productname">${ item.product_name }</p>
                    <div class="us-detail-Product-name">
                        <figure class="purchase-product">
                            <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                        </figure>
                        <div class="introduction-div">
                            <p class="us-product-man">商品コード：${ item.id }</p>
                            
                            <c:forEach var="color" items="${ item.colorTexts }">
			                   <p class="us-color-size">カラー:${ color.purchase_color}</p>
			                </c:forEach>
                            <br><p class="size">サイズ:</p>
                            <p class="value">${ item.product_price }(税込)</p>
                        </div>
                        <p class="peace">${Product_shopcart.purchase_count }個</p>
                        <div class="us-detail-peace">
                            <p class="postage">送料:500円</p>
                            <p class="total-value">小計:${ item.product_price }(税込)</p>
                        </div>
                    </div>
                </section>
                </a>
                </c:forEach>
                
                <!-- ここから -->
                <!-- ここまで -->
                
                
                
                <!-- 
                <section>
                    <p class="us-productname">モノトーン椅子</p>
                    <div class="us-detail-Product-name">
                        <figure class="purchase-product">
                            <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                        </figure>
                        <div class="introduction-div">
                            <p class="us-product-man">商品コード：○○</p>
                            <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                            <p class="value">10,000円(税込)</p>
                        </div>
                        <p class="peace">個数 1</p>
                        <div class="us-detail-peace">
                            <p class="postage">送料:500円</p>
                            <p class="total-value">小計:10,000円(税込)</p>
                        </div>
                    </div>
                </section>
                
                <section>
                    <p class="us-productname">モノトーン椅子</p>
                    <div class="us-detail-Product-name">
                        <figure class="purchase-product">
                            <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                        </figure>
                        <div class="introduction-div">
                            <p class="us-product-man">商品コード：○○</p>
                            <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                            <p class="value">10,000円(税込)</p>
                        </div>
                        <p class="peace">個数 1</p>
                        <div class="us-detail-peace">
                            <p class="postage">送料:500円</p>
                            <p class="total-value">小計:10,000円(税込)</p>
                        </div>
                    </div>
                </section>
             
                <section>
                    <p class="us-productname">モノトーン椅子</p>
                    <div class="us-detail-Product-name">
                        <figure class="purchase-product">
                            <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                        </figure>
                        <div class="introduction-div">
                            <p class="us-product-man">商品コード：○○</p>
                            <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                            <p class="value">10,000円(税込)</p>
                        </div>
                        <p class="peace">個数 1</p>
                        <div class="us-detail-peace">
                            <p class="postage">送料:500円</p>
                            <p class="total-value">小計:10,000円(税込)</p>
                        </div>
                    </div>
                </section>
            
                <section>
                    <p class="us-productname">モノトーン椅子</p>
                    <div class="us-detail-Product-name">
                        <figure class="purchase-product">
                            <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                        </figure>
                        <div class="introduction-div">
                            <p class="us-product-man">商品コード：○○</p>
                            <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                            <p class="value">10,000円(税込)</p>
                        </div>
                        <p class="peace">個数 1</p>
                        <div class="us-detail-peace">
                            <p class="postage">送料:500円</p>
                            <p class="total-value">小計:10,000円(税込)</p>
                        </div>
                    </div>
                </section>
                
                <section>
                    <p class="us-productname">モノトーン椅子</p>
                    <div class="us-detail-Product-name">
                        <figure class="purchase-product">
                            <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                        </figure>
                        <div class="introduction-div">
                            <p class="us-product-man">商品コード：○○</p>
                            <p class="us-color-size">カラー:○○<br>サイズ:○○</p>
                            <p class="value">10,000円(税込)</p>
                        </div>
                        <p class="peace">個数 1</p>
                        <div class="us-detail-peace">
                            <p class="postage">送料:500円</p>
                            <p class="total-value">小計:10,000円(税込)</p>
                        </div>
                    </div>
                </section>
          
                 -->
                
                
                        <!--支払方法-->
                        <form  action="Product_complete" method="post" ><!-- onsubmit="return check();" -->
	                        <h2 class="payment-method">支払方法*</h2>
	                        <button class="select-input-btn" type="button" onclick="check_select()">
	                            <select class="paymethood-pulldown text-input-select" name="paymethood-box">
	                                <option value="">お選びください</option>
	                                <option value="credit">クレジットカード払い</option>
	                                <option value="cash">代引き</option>
	                            </select>
	                        </button>
	                        <p class="error-message-select">※入力してください</p>
	                         <div class="product-button">
	                         
								<form action="product_compleate" method="post">
					                <a href="Product_list" class="return-btn">商品リスト一覧</a>
					                <button type="submit">購入する</button>
								</form>
				              
				                <%--
				                
				                <a href="Product_complete" class="cart-btn">購入する</a>
				                 --%>
				                <%--><input class="cart-btn" type="submit" value="カートに入れる"> --%>
		            		</div>
						</form>
                        <!--確定ボタン-->
                        <!-- 
                        
                        <input class="purchase-button" type="submit" value="次へ" onclick="window.onbeforeunload = null">
                    </form>
                </div>
            </div>

            <button id="scroll-to-top-btn"><img class="page-top-img" src="assets/img/page-top.png" alt=""></button>
            -->

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
    </div>
</body>

</html>