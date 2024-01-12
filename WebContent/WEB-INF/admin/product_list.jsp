<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>管理者一覧</title>
  <link rel="stylesheet" href="assets/css/admin.css">
</head>

<body>
  <!-- header -->
  <header>
    <ul class="ad-ul-head">
      <a href="Admin_productList">
        <li class="ad-list">一覧</li>
      </a>
      <a href="Admin_newProduct">
        <li class="ad-product">商品管理</li>
      </a>
      <a href="Admin_productStatus">
        <li class="ad-del-list">配送管理</li>
      </a>
        <li class="ad-username">ユーザー名</li>
    </ul>
  </header>

  <main>
    <ul class="ad-ul-main">
      <!-- 準備中と完了のタブ切り替え -->
      <div class="ad-tab-switch">
        <a href="#">準備中</a>
        <a href="#">完了</a>
      </div>
      <!-- 注文データ一覧 -->
      
   <!-- DB接続テスト -->
   <!-- 
   <c:forEach var="item" items="${ list }">

	  <a href="Product_detail?id=${ item.id }">
	   <div class="goods-item">
	        <figure>
	          <img class="p" src="assets/img/key-visuals.png" alt="">
	        </figure>
	        <p class="ad-productname">${ item.product_name }</p>
	        <p class="price">値段:${ item.product_price }(税込)</p>
       </div>
	  </a>
    </c:forEach> -->  
    <!-- --------------  -->
    
    <c:forEach var="item" items="${ list }">
      <li class="ad-order-list">
        <div class="ad-product-man">
          <img class="ad-productimg" src="assets/img/adlogin_shopping.png" alt="">
          <p class="ad-product-name">${ item.product_name }<br>色：black　　個数：１ </p>
        </div>
        <div class="ad-product-del">
          <p>配送日時<br>2023/05/02</p>
          <p>配送元の住所<br>〒169-8522
            東京都新宿区百人町1-25-4
            TEL：03-3363-7761（代表）</p>
          <p>配送場所<br>〒169-8522
            東京都新宿区百人町1-25-4
            TEL：03-3363-7761（代表）</p>
        </div>
        <div class="ad-del-man">
          <img src="assets/img/ad_delbell.png" alt="">
          <p>出荷準備中</p>
          <p>在庫数：${ item.product_stock }</p>
        </div>
       </li>
      </c:forEach>  
    </ul>
  </main>
</body>

</html>