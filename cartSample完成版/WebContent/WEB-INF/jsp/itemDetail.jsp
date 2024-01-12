<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>商品詳細 | カートサンプル</title>
  <script src="../assets/js/itemDetail.js" defer></script>
</head>
<body>
  <h1>カート用商品</h1>
  
  
  
  
  
  <form action="#" method="post">
	  <input type="hidden" name="item-id" id="item-id" value="123"> <%-- 商品ID --%>
	  <label for="count">数量：</label>
	  <input type="number" name="count" id="count" min="1" max="10" value="1">
	  <button type="submit" id="add-cart">カートに入れる</button>
  </form>


  <!-- <button type="button" id="show-cart">カート一覧を見る</button> -->
</body>
</html>