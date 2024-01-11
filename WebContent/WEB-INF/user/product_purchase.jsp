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

                <nav class="nav">
                    <h1 class="Inair"><a href="">Inair</a></h1>
                    <li class="nav-top"><a href="user/product_top/index.html">ホーム</a></li>
                    <li><a href="user/login/index.html">ログイン</a></li>
                    <li><a href="user/product_shopcart/index.html">カート</a></li>
                    <li><a href="user/purchase_favorite/index.html">お気に入り</a></li>
                    <li><a href="user/purchase_history/index.html">商品履歴</a></li>
                    <li><a href="user/footer_shop/index.html">店舗</a></li>
                    <li><a href="user/footer_product/index.html">商品</a></li>
                    <li><a href="user/footer_service/index.html">サービス</a></li>
                    <li><a href="user/footer_inquiry/index.html">お問い合わせ</a></li>
                    <li><a href="user/footer_about Inair/index.html">Inairについて</a></li>
                    </ul>
                </nav>
                <button type="button" id="navbtn" onclick="navClick()"></button>

                <!-- ハンバーガーメニュー -->
                <!-- </div> -->
                <!-- ユーザーアイコン -->
                <a class="user-icon" href="user/login/index.html">
                    <img src="assets/img/header_user.png" alt="">
                </a>
                <!-- お店のロゴ -->
                <a class="shop-logo" href="user/product_top/index.html">
                    <p>Inair</p>
                </a>
                <!--お気に入りアイコン  -->
                <a class="favorite-icon" href="user/purchase_favorite/index.html">
                    <img src="assets/img/header_favorite.png" alt="">
                </a>
                <!-- カートアイコン -->
                <a class="cart-icon" href="user/product_shopcart/index.html">
                    <img src="assets/img/header_cart.png" alt="">
                </a>
            </div>
            <!-- 検索アイコン -->
            <form class="search-form" action="get" href="#">
                <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
                <!-- 検索ボックス -->
                <input type="search" class="search-box" placeholder="入力してください">
            </form>


            <div id="header-animation">
                <nav class="nav">
                    <h1 class="Inair"><a href="">Inair</a></h1>
                    <li class="nav-top"><a href="user/product_top/index.html">ホーム</a></li>
                    <li><a href="user/login/index.html">ログイン</a></li>
                    <li><a href="user/product_shopcart/index.html">カート</a></li>
                    <li><a href="user/purchase_favorite/index.html">お気に入り</a></li>
                    <li><a href="user/purchase_history/index.html">商品履歴</a></li>
                    <li><a href="user/footer_shop/index.html">店舗</a></li>
                    <li><a href="user/footer_product/index.html">商品</a></li>
                    <li><a href="user/footer_service/index.html">サービス</a></li>
                    <li><a href="user/footer_inquiry/index.html">お問い合わせ</a></li>
                    <li><a href="user/footer_about Inair/index.html">Inairについて</a></li>
                    </ul>
                </nav>
                <button type="button" id="navbtn" onclick="navClick()"></button>
                <!-- 検索アイコン -->
                <form class="search-form-anim" action="get" href="#">
                    <input type="image" class="search-icon" src="assets/img/header_search.png" alt="">
                    <!-- 検索ボックス -->
                    <input type="search" class="search-box-anim" placeholder="入力してください">
                </form>
                <!--お気に入りアイコン  -->
                <a class="favorite-icon-anim" href="user/purchase_favorite/index.html">
                    <img src="assets/img/header_favorite.png" alt="">
                </a>
                <!-- カートアイコン -->
                <a class="cart-icon-anim" href="user/product_shopcart/index.html">
                    <img src="assets/img/header_cart.png" alt="">
                </a>
            </div>

        </header>

        <main>
            <!--パンくずリスト-->
            <nav>
                <ol class="breadcrumb">
                    <li><a href="user/product_top/">ホーム</a></li>
                    <li><a href="user/product_list/">商品一覧</a></li>
                    <li><a href="user/puroduct_detail/">商品詳細</a></li>
                    <li><a href="user/product_shopcart/">カート</a></li>
                    <li>商品購入</li>
                </ol>
            </nav>
            <!--商品データ-->
            <div class="cart-product-div">
                <div class="year-total">
                    <h2 class="peace">個数:5個</h2>
                    <h2 class="total-pay">合計金額：50,000円(税込)</h2>
                </div>
                <!-- ここから -->
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
                <!-- ここまで -->
                <!-- ここから -->
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
                <!-- ここまで -->
                <!-- ここから -->
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
                <!-- ここまで -->
                <!-- ここから -->
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
                <!-- ここまで -->
                <!-- ここから -->
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
                <!-- ここまで -->
                <!-- ここから -->
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
                <!-- ここまで -->
                <h1 class="Shipping information">1.お届け先情報</h1>
                <div class="us-product-purchase">
                    <!--お届け先情報フォーム-->
                    <form class="infomation-form" action="#" method="get" onsubmit="return check()">
                        <!--お名前-->
                        <h2 class="name">お名前*</h2>
                        <input class="name-txt text-input" type="text" placeholder="入力してください">
                        <p class="error-message">※入力してください</p>

                        <h2 class="postcode-id">郵便番号*</h2>
                        <input class="postcode-txt text-input" type="text" placeholder="入力してください">
                        <p class="error-message">※入力してください</p>

                        <!--都道府県-->
                        <h2 class="addres-txt">都道府県*</h2>
                        <button class="select-input-btn" type="button" >
                        <select class="prefectur-box text-input-select" name="prefectur-box" onclick="check_select()">
                            <option value="">お選びください</option>
                            <option value="北海道">北海道</option>
                            <option value="青森">青森</option>
                            <option value="岩手">岩手</option>
                            <option value="宮城">宮城</option>
                            <option value="秋田">秋田</option>
                            <option value="山形">山形</option>
                            <option value="福島">福島</option>
                            <option value="茨城">茨城</option>
                            <option value="栃木">栃木</option>
                            <option value="群馬">群馬</option>
                            <option value="埼玉">埼玉</option>
                            <option value="千葉">千葉</option>
                            <option value="東京都">東京都</option>
                            <option value="神奈川">神奈川</option>
                            <option value="山梨">山梨</option>
                            <option value="長野">長野</option>
                            <option value="新潟">新潟</option>
                            <option value="富山">富山</option>
                            <option value="石川">石川</option>
                            <option value="福井">福井</option>
                            <option value="岐阜">岐阜</option>
                            <option value="静岡">静岡</option>
                            <option value="愛知">愛知</option>
                            <option value="三重">三重</option>
                            <option value="滋賀">滋賀</option>
                            <option value="京都府">京都府</option>
                            <option value="大阪府">大阪府</option>
                            <option value="兵庫">兵庫</option>
                            <option value="奈良">奈良</option>
                            <option value="和歌山">和歌山</option>
                            <option value="鳥取">鳥取</option>
                            <option value="島根">島根</option>
                            <option value="岡山">岡山</option>
                            <option value="広島">広島</option>
                            <option value="山口">山口</option>
                            <option value="徳島">徳島</option>
                            <option value="香川">香川</option>
                            <option value="愛媛">愛媛</option>
                            <option value="高知">高知</option>
                            <option value="福岡">福岡</option>
                            <option value="佐賀">佐賀</option>
                            <option value="長崎">長崎</option>
                            <option value="熊本">熊本</option>
                            <option value="大分">大分</option>
                            <option value="宮崎">宮崎</option>
                            <option value="鹿児島">鹿児島</option>
                            <option value="沖縄">沖縄</option>
                        </select>
                        </button>
                        <p class="error-message-select">※入力してください</p>

                        <!--市区町村-->
                        <h2 class="municipalities">市区町村 番地*</h2>
                        <input class="municipalities-txt text-input" type="text" name="municipalities-txt"
                            placeholder="市区町村（番地）">
                        <p class="error-message">※入力してください</p>

                        <!--建物名・部屋番号-->
                        <h2 class="building-roomnumber">建物名・部屋番号</h2>
                        <input class="building-txt text-input" type="text" name="building-txt" placeholder="入力してください">
                        <p class="error-message">※入力してください</p>

                        <!--電話番号-->
                        <h2 class="purchase-telephone-number">電話番号*</h2>
                        <input class="purchase-telephone-txt text-input" type="tel" name="phone-txt"
                            placeholder="入力してください">
                        <p class="error-message">※入力してください</p>

                        <!--メールアドレス-->
                        <h2 class="mail-adress">メールアドレス*</h2>
                        <input class="adrres-txt text-input" type="email" name="adrres-txt" placeholder="入力してください">
                        <p class="error-message">※入力してください</p>

                        <!--支払方法-->
                        <h2 class="payment-method">支払方法*</h2>
                        <button class="select-input-btn" type="button" onclick="check_select()">
                            <select class="paymethood-pulldown text-input-select" name="paymethood-box">
                                <option value="">お選びください</option>
                                <option value="クレジットカード払い">クレジットカード払い</option>
                                <option value="代引き">代引き</option>
                                <option value="ファミマで現金払い">ファミマで現金払い</option>
                                <option value="セブンで現金払い">セブンで現金払い</option>
                            </select>
                        </button>
                        <p class="error-message-select">※入力してください</p>

                        <!--確定ボタン-->
                        <input class="purchase-button" type="submit" value="次へ" onclick="window.onbeforeunload = null">
                    </form>
                </div>
            </div>

            <button id="scroll-to-top-btn"><img class="page-top-img" src="assets/img/page-top.png" alt=""></button>
        </main>

        <!-- footer -->
        <footer>
            <!-- 店舗 -->
            <div class="footer-aligned">
                <a href="#" class="footer-store">
                    <figure>
                        <img src="assets/img/footer_store.png" alt="">
                    </figure>
                    <p>店舗</p>
                </a>
                <div></div>
                <!-- 商品 -->
                <a href="#" class="footer-shopping">
                    <figure>
                        <img src="assets/img/footer_shopping.png" alt="">
                    </figure>
                    <p>商品</p>
                </a>
                <!-- サービス -->
                <a href="#" class="footer-service">
                    <figure>
                        <img src="assets/img/footer_service.png" alt="">
                    </figure>
                    <p>サービス</p>
                </a>
                <!-- お問い合わせ -->
                <a href="#" class="footer-support">
                    <figure>
                        <img src="assets/img/footer_service.png" alt="">
                    </figure>
                    <p>お問い合わせ</p>
                </a>
                <!-- サイトについて -->
                <a href="#" class="footer-site">
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