<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>お気に入り画面</title>
    <script src="assets/js/cansel_button.js"></script>
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
                <li><a href="/user/product_top/">ホーム</a></li>
                <li>お気に入り</li>
            </ol>
        </nav>
        <div class="h">

            <!-- </li> -->
            <!-- 商品データ -->

          
            <c:forEach var="item" items="${list }">
	          <form action="#" method="post">
              <a href="Product_detail?id=${ item.id }">
              <input type = "hidden" name = "id" value = "${ item.id }">
	            <section class="history-list">
	                <div class="history-title">
	                    <h1 class="ad-productname">${ item.product_name }</h1>
	                    <p class="evaluation">☆☆☆☆☆</p>
	                </div>
	                <div class="ad-product-man">
	
		        		            
			            <div class="imgContents imgOverflow">
				            <c:forEach var="img" items="${ item.imgUrl }">
					              <figure>
					                <img class="" src="${ img.img_url }" alt="">
					              </figure>
				              </c:forEach>
			            </div>
			        
	                    <div class="q">
	                        <p class="ad-product-man">
	                        
	                            <c:forEach var="color" items="${ item.colorTexts }">
			                       <p>カラー：${ color.purchase_color}</p>
			                    </c:forEach>
		                        <br>
			                     <c:forEach var="size" items="${ item.size_name }">
			   						<p>サイズ：${ size.size_name }</p>
								</c:forEach>
	                        	<br>
	                        </p>
		                     
		                        <p class="value">${ item.product_price}円(税込)</p>
		                       

	                
	                        <!--カートに入れる-->
	                        <button Class="btn" onclick="cartButton()">カートに入れる</button>
	                        
	                        <!-- 
	                        <input class="confirm" type="submit" value="カートに入れる"></input>
	                         -->
				          </form>
				      	   <form class="cart_deleate" action="#" method="post">
				          	<input type="hidden" name="productId" value="${ item.id}">
				          	<p>${ item.id }</p>
				      		<button class="deleate_button" >削除</button><!-- onclick="removeExample(this)" -->
				      	  </form>
	                    </div>
	                </div>
	            </section>
              </a>
            </c:forEach>
            
            
            
            <!--    
            
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                      <!--    <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                        <!--  
                        <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                        <!--  
                        <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>
            <section class="history-list">
                <div class="history-title">
                    <h1 class="ad-productname">モノトーン椅子</h1>
                    <p class="evaluation">☆☆☆☆☆</p>
                </div>
                <div class="ad-product-man">
                    <img class="ad-productimg" src="assets/img/chair.jpg" alt="">
                    <div class="q">
                        <p class="ad-product-man"><br>色：白<br>サイズ：○○</p>
                        <p class="value">30,000円(税込)</p>
                        <!--カートに入れる-->
                        <!--  
                        <form class="search-form" action="get" href="#">
                            <input class="confirm" type="submit" value="カートに入れる"></input>
                    </div>
                </div>
            </section>-->
	
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