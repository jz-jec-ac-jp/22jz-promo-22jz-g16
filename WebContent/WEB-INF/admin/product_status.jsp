<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>商品状況</title>
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
  	<c:forEach var="item" items="${ list }">
	    <!-- ＊＊まとまり＊＊ -->
	    <!-- 商品 -->
	    <div class="ad">
	      <div class="ad-product-status">
	        <img class="ad-producting" src="assets/img/chair.jpg" alt="">
	        <p class="ad-productname">題名：${ item.product_name }<br>色：black　　個数：１ </p>
	      </div>
	      <!-- 配送 -->
	      <div class="ad-status">
	        <!-- 配送日時 -->
	        <p class="status-time">
	          配送日時<br>
	          2023/9/30 <br>
	        </p>
	        <!-- 配送元住所 -->
	        <p class="status-address">
	          配送元住所 <br>
	          〒169-8522 東京都新宿区百人町1-25-4
	        </p>
	        <!-- 配送場所 -->
	        <p>
	          配送場所 <br>
	          〒169-8522 東京都新宿区百人町1-25-4
	        </p>
	      </div>
	    </div>
	    <!-- 配送ステータス -->
	    <ul class="progressbar">
	      <li>池袋倉庫　<span>10:00</span></li>
	      <li>○○　<span>14:00</span></li>
	      <li>○○　<span>20:00</span></li>
	      <li>自宅　<span>21:00</span></li>
	    </ul>
	    <!-- ＊＊まとまり＊＊ -->
	 </c:forEach>

    <!-- </div> -->
  </main>
</body>

</html>