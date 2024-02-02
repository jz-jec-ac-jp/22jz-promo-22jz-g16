<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>購入履歴</title>
    <script src="assets/js/humberger.js"></script>
    <script src="assets/js/top-page.js" defer></script>
    <script src="assets/js/header-anim.js"></script>
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
              <h1 class="Inair"><a href="Prodcut_top">Inair</a></h1>
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
            <h1 class="Inair"><a href="Product_top">Inair</a></h1>
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
                <li>購入履歴</li>
            </ol>
        </nav>
        
        <!-- 
        
        <input type="search" class="search-box" placeholder="入力欄"></form>

        <div class="year-total">
            <input type="month" class="calender">
            <h2 class="year-month">2023年8月</h2>
            <h2 class="total-pay">合計金額：40,000円</h2>
        </div>
         -->
        
        <div class="history-data">
        
	        <c:forEach var="item" items="${ list }">
	        <a href="Product_review?id=${ item.id }">
	            <section class="history-product">
	                <p class="ad-productname">${ item.product_name }</p>
	                <div class="ad-product-man">
	                    <div class="imgContents imgOverflow">
				            <c:forEach var="img" items="${ item.imgUrl }">
					              <figure>
					                <img class="" src="${ img.img_url }" alt="">
					              </figure>
				              </c:forEach>
			            </div>
	
	                    <div class="introduction-div">
	                    <!-- 
	                        <p class="ad-product-man">サイズ:</p>
	                     -->
	                        <div class="color-column">
			                    <c:forEach var="color" items="${ item.colorTexts }">
					                <p>カラー：${ color.purchase_color}</p>
					            </c:forEach>
		                    </div>
					            <br>
					            <c:forEach var="size" items="${ item.size_name }">
				   					<p class="size">サイズ:${ size.size_name }</p>
								</c:forEach>
		                       <br>
	                        <p class="delivery-situation">2023/09/21に発送済</p>
	                        <p class="value">${ item.product_price }円(税込)</p>
	                        <input class="cancel-button" type="submit" value="キャンセル">
	                    </div>
	                </div>
	                <!-- 
	                
	                <div class="delivery-bottom">
	                    <div class="delivery-route">○○ → ------ ○○ ----- ○○ ----- ○○ -----○○</div>
	                </div>
	                 -->
	            </section>
	         </c:forEach>
           </div>
            
            <!-- 
            
             <section class="history-product">
                <p class="ad-productname">モノトーン椅子</p>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">

                    <div class="introduction-div">
                        <p class="ad-product-man">色：白　サイズ：</p>
                        <p class="delivery-situation">2023/09/21に発送済</p>
                        <p class="value">10,000円(税込)</p>
                        <input class="cancel-button" type="submit" value="キャンセル">
                    </div>
                </div>
                <div class="delivery-bottom">
                    <div class="delivery-route">○○ → ------ ○○ ----- ○○ ----- ○○ -----○○</div>
                </div>
            </section>
            <section class="history-product">
                <p class="ad-productname">モノトーン椅子</p>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">

                    <div class="introduction-div">
                        <p class="ad-product-man">色：白　サイズ：○○</p>
                        <p class="delivery-situation">2023/09/21に発送済</p>
                        <p class="value">10,000円(税込)</p>
                        <input class="cancel-button" type="submit" value="キャンセル">
                    </div>
                </div>
                <div class="delivery-bottom">
                    <div class="delivery-route">○○ → ------ ○○ ----- ○○ ----- ○○ -----○○</div>
                </div>
            </section>
            <section class="history-product">
                <p class="ad-productname">モノトーン椅子</p>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">

                    <div class="introduction-div">
                        <p class="ad-product-man">色：白　サイズ：○○</p>
                        <p class="delivery-situation">2023/09/21に発送済</p>
                        <p class="value">10,000円(税込)</p>
                        <input class="cancel-button" type="submit" value="キャンセル">
                    </div>
                </div>
                <div class="delivery-bottom">
                    <div class="delivery-route">○○ → ------ ○○ ----- ○○ ----- ○○ -----○○</div>
                </div>
            </section>
            <section class="history-product">
                <p class="ad-productname">モノトーン椅子</p>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">

                    <div class="introduction-div">
                        <p class="ad-product-man">色：白　サイズ：○○</p>
                        <p class="delivery-situation">2023/09/21に発送済</p>
                        <p class="value">10,000円(税込)</p>
                        <input class="cancel-button" type="submit" value="キャンセル">
                    </div>
                </div>
                <div class="delivery-bottom">
                    <div class="delivery-route">○○ → ------ ○○ ----- ○○ ----- ○○ -----○○</div>
                </div>
            </section>
        </div>

        <button id="scroll-to-top-btn"><img class="page-top-img" src="/assets/img/page-top.png" alt=""></button>
        <!-- </div> -->
        <div class="product-button">
            	<%--
            	
                <input class="return-btn" type="submit" value="戻る">
            	 --%>
            	 <%--
            	 
            	<a href="Product_top" class="history-cart-btn">トップページに戻る</a>
            	  --%>
                <%--><input class="cart-btn" type="submit" value="カートに入れる"> --%>
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