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
      <a href="Admin_login">
        <li>ログイン画面</li>
      </a>
        <li class="ad-username">${ loginUserId }</li>
    </ul>
  </header>

  <main>
  
    <ul class="ad-ul-main">
  		<form  action="#" method="post" ><!-- onsubmit="return check();" -->
	      <!-- 準備中と完了のタブ切り替え -->
	      <div class="ad-tab-switch">
	        <a  href="#">準備中</a>
	        <a  href="#">完了</a>
	      </div>
	      <!-- 注文データ一覧 -->
      	</form>
    
    <c:forEach var="item" items="${ list }" varStatus="count">
      <li class="ad-order-list">
        <div class="ad-product-man">
          <img class="ad-productimg" src="assets/img/adlogin_shopping.png" alt="">
          <p class="ad-product-name">${ item.product_name }<br>色：black　　個数：１ </p>          
          <p>${ userMailAdress[count.index] }</p>
          <p>userId : ${ idList[count.index] }</p>
        </div>
        <div class="ad-product-del">
          <p>< 配送日時 ><br>2023/05/02</p>
          <p>< 配送元の住所 > <br> 〒169-8522</p>
          <p>東京都新宿区百人町1-25-4</p>
          <p>TEL：03-3363-7761（代表）</p>
        	<p>< 配送場所 ></p>
          <p>〒169-8522</p>
          <p>${ userDetailList[count.index].us_prefectur }県 ${ userDetailList[count.index].us_adress } ${ userDetailList[count.index].street_address }</p>
          <p>TEL：${ userDetailList[count.index].tel_number  }</p>
        </div>
        <div class="ad-del-man">
          <img src="assets/img/ad_delbell.png" alt="">
          <!--  <p>出荷準備中</p> -->
       
           <form action="#" method="post" class="listForm" ><!-- onsubmit="return check();" -->
                
               	<input type="hidden" value="${ item.id }" name="productId">
               	<input type="hidden" value="${ historyIdList[count.index] }" name="historyId">
               <select class="comparisonSelect" name="comparison-box">
               		<option value="">配送状況選択</option>
                   <option value="preparation">準備中</option>
                   <option value="completion">発送済み</option>
               </select>
               <p class="deliveryStatus">${ listPurchaseStatus[count.index] }</p>
               
               <button type="submit" class="listFormButton">確定</button>
            </form>
         
          <p class="productStock">在庫数：${ item.product_stock }</p>
          <p>${ itemStock[count.index] }</p>
        </div>
       </li>
      </c:forEach>  
    </ul>
  </main>
</body>

</html>