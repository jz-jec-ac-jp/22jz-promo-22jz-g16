// (function () {
// 	'use strict'

	// (function () {
	// 	'use strict'
	// 	const scroll_btn = document.querySelector('.page-top');
	// 	// const head = document.querySelector('.head-hover');
	// 	// const head_ul = document.querySelector('.header-ul');

	// 	// scroll_btn.addEventListener('click', scroll_top);

	// 	// function scroll_top() {
	// 	// 	window.scroll({ top: 10, behavior: 'smooth' });
	// 	// };


	// 	window.addEventListener('scroll', scroll_event);

	// 	function scroll_event() {

	// 		if (window.pageYOffset > 400) {
	// 			scroll_btn
	// 				.style.opacity = '1';
	// 		} else if (window.pageYOffset < 400) {
	// 			scroll_btn
	// 				.style.opacity = '0';
	// 		}
	// 	};


	// 	// function scroll_event() {

	// 	// 	if (window.pageYOffset > 655) {
	// 	// 		head.style.background = '#fff';
	// 	// 		head_ul.style.filter = 'invert(50%)';
	// 	// 		// head.classList.toggle('active');
	// 	// 	} else if (window.pageYOffset < 655) {
	// 	// 		head
	// 	// 			.style.background = 'rgba(0, 0, 0, 0)';
	// 	// 		head_ul.style.filter = 'invert(0%)';
	// 	// 	}
	// 	// };


	// 	// //HTML取得
	// 	// // const navigation = document.querySelector('.navigation');
	// 	// const elMenuButton = document.querySelector('.menu-btn');
	// 	// const elHeader = document.querySelector('.head-hover');

	// 	// elMenuButton.addEventListener('click', (e) => {
	// 	// 	// elHeader.classList.toggle('active');
	// 	// 	elHeader.classList.toggle('active');
	// 	// });
	// })();

	//ボタン
	const scroll_to_top_btn = document.querySelector('#scroll-to-top-btn');

	//クリックイベントを追加
	scroll_to_top_btn.addEventListener('click', scroll_to_top);

	function scroll_to_top() {
		window.scroll({ top: 0, behavior: 'smooth' });
	};


	//スクロール時のイベントを追加
	window.addEventListener('scroll', scroll_event);

	function scroll_event() {

		if (window.pageYOffset > 400) {
			scroll_to_top_btn.style.opacity = '1';
		} else if (window.pageYOffset < 400) {
			scroll_to_top_btn.style.opacity = '0';
		}

	};
	// // スクロールしてトップに戻るボタンの表示・非表示
	// const scrollToTopButton = document.getElementById('scroll-to-top-btn');
	// window.addEventListener('scroll', () => {
	//   if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
	//     scrollToTopButton.style.display = 'block';
	//   } else {
	//     scrollToTopButton.style.display = 'none';
	//   }
	// });

	// // トップに戻る処理
	// function scrollToTop() {
	//   window.scrollTo({
	//     top: 0,
	//     behavior: 'smooth'
	// 	});
// })();