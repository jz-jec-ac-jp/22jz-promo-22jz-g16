(function () {
    'use strict'

    //クラス名が「scroll-in」の要素を取得
    // const objects = document.querySelectorAll('.scroll-in');

    // //スクロール感知で実行
    // const cb = function(entries, observer) {
    //     entries.forEach(entry => {
    //         if(entry.isIntersecting) {
    //             entry.target.classList.add('displayed');//スクロール感知で「displayed」のクラス名を付与
    //             observer.unobserve(entry.target); //監視の終了
    //         }
    //     });
    // }
    // // オプション
    // const options = {
    //     root: null,
    //     rootMargin: "0px",
    //     threshold: 0
    // }

    // // IntersectionObserverインスタンス化
    // const io = new IntersectionObserver(cb, options);

    // // 監視を開始
    // objects.forEach(object => {
    //     io.observe(object);
    // });

    // フェードインの処理をまとめた関数
    // function fadeinEvent() {
    //     // getElementsByClassName で、fadein のクラスを持つ要素を取得し配列として保持
    //     var fadeinClass= Array.prototype.slice.call(document.getElementsByClassName("fadein"));

    //     // 配列の数だけ処理を行う
    //     fadeinClass.forEach(function( element ) {

    //         // getBoundingClientRect で要素の位置や幅や高さなどを取得
    //         var boundingClientRect = element.getBoundingClientRect();

    //         // スクロールの位置情報（html のスクロールがなければ、body のスクロール）を取得
    //         var scroll = document.documentElement.scrollTop || document.body.scrollTop;

    //         // ブラウザウィンドウの ビューポートの高さ
    //         var windowHeight = window.innerHeight;

    //         // スクロールの位置が、フェードインしたい要素の位置にいるかどうか判定する
    //         if (scroll > scroll + boundingClientRect.top - windowHeight + 200){

    //             // 要素を表示する場合は、要素の透明度を無くし、Y方向の移動距離を無くす。これで表示される
    //             element.style.opacity = "1";
    //             element.style.transform = "translateY(0)";
    //         }
    //     });
    // }

    // // 画面がロードされたときに行う処理を記載
    // window.onload = function(){
    //     // 画面が中途半端なスクロール位置でリロードされても表示するべきものが表示されるようにするため、ロードですぐに呼び出す
    //     fadeinEvent();

    //     // スクロールしたら動くエベントとして用意しておく。スクロールするたびに動くようにする
    //     window.addEventListener('scroll', fadeinEvent, false);
    // }


    // window.addEventListener("scroll", function () {
    //     var currentScroll = window.pageYOffset;
    //     var header = document.getElementById("header-animation");
    //     var headerHeight = header.offsetHeight;

    //     if (currentScroll >= 50) {
    //         header.style.top = "0";
    //         // } else if (currentScroll < this.lastScroll) {
    //         //   header.style.top = headerHeight + "px";
    //     } else {
    //         header.style.top = "-100px";
    //     }
    //     this.lastScroll = currentScroll;
    // }, false);


    //クラス名が「scroll-in」の要素を取得
    const objects = document.querySelectorAll('.fadein');

    //スクロール感知で実行
    const cb = function (entries, observer) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('displayed');//スクロール感知で「displayed」のクラス名を付与
                observer.unobserve(entry.target); //監視の終了
            }
        });
    }
    // オプション
    const options = {
        root: null,
        rootMargin: "0px",
        threshold: 0
    }

    // IntersectionObserverインスタンス化
    const io = new IntersectionObserver(cb, options);

    // 監視を開始
    objects.forEach(object => {
        io.observe(object);
    });

})();
