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
      <a href="Admin_login">
        <li>ログイン画面</li>
      </a>
        <li class="ad-username">${ loginUserId }</li>
    </ul>
  </header>
  
  <main>
  	<c:forEach var="item" items="${ list }" varStatus="count">
	    <!-- ＊＊まとまり＊＊ -->
	    <!-- 商品 -->
	    <div class="ad">
	      <div class="ad-product-status">
	        <img class="ad-producting" src="assets/img/chair.jpg" alt="">
	        <div>
		        <p>題名：${ item.product_name }</p>
		        <p>色：black　　個数：１</p>
		        <p>${ userMailAdress[count.index] }</p>
	            <p>userId : ${ idList[count.index] }</p>
	        </div>
	      </div>
	      <!-- 配送 -->
	      <div class="ad-status">
	        <!-- 配送日時 -->
	        <p class="status-time">
	          < 配送日時 ><br>
	          2023/9/30 <br>
	        </p>
	        <!-- 配送元住所 -->
	        <p class="status-address">
	          < 配送元住所 ><br>
	          〒169-8522 東京都新宿区百人町1-25-4
	        </p>
	        <!-- 配送場所 -->
	        <p>< 配送場所 ><p>
	          <p>${ userDetailList[count.index].us_prefectur }県 ${ userDetailList[count.index].us_adress } ${ userDetailList[count.index].street_address } TEL：${ userDetailList[count.index].tel_number}</p>
	        </p>
	      </div>
	    </div>
	    <!-- 配送ステータス -->
	    
	    
	    <!-- 変更したよーーーーーーーーーーーーーーーー -->
	    <ul class="progressbar">
	      <li>
			<c:if test="${ listStatus[count.index] }">
				<p>準備中</p>
			</c:if>
	      </li>
	      <li>
	      	<c:if test="${ not empty comp }">
	      		<p>出荷中</p>
	      	</c:if>
	      </li>
	    </ul>
	    <!-- ＊＊まとまり＊＊ -->
	 </c:forEach>

    <!-- </div> -->
  </main>
</body>

</html>