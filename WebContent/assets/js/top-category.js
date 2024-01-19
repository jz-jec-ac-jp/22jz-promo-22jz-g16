// (function () {
//     'use strict'



/* ページが開いた時 */
// window.onload = function () {
//     // ポップアップを表示しない
//     popup_close_chair();
//     popup_close_table();
//     popup_close_light();
//     popup_close_storage();
//     popup_close_goods();


// };

// -----------------------------------

/* ポップアップを開く */
function popup_open_chair() {
    var popup = document.getElementById('popup-overlay-chair');
    var popup_window = document.getElementById('popup-window-chair')
    popup_window.style.display = "block";
    popup.style.display = "block";
    popup.classList.add('popup-message');
}

/* ポップアップを閉じる */
function popup_close_chair() {
    var popup = document.getElementById('popup-overlay-chair');
    var popup_window = document.getElementById('popup-window-chair')
    popup_window.style.display = "none";
    popup.style.display = "none";
    popup.classList.remove('popup-message');

}

/* クリックイベントの登録 */
addEventListener('click', overlay_popup_close_chair);

/* タップイベントの登録 */
addEventListener('touchstart', overlay_popup_close_chair);

/* オーバレイをクリックした時、ポップアップを閉じる */
function overlay_popup_close_chair(e) {
    var popup = document.getElementById('popup-overlay-chair');
    var popup_window = document.getElementById('popup-window-chair')
    popup_window.style.display = "none";
    popup.classList.remove('popup-message');
    if (e.target == popup) {
        popup.style.display = 'none';
    }
}

// -----------------------------------


// 机
/* ポップアップを開く */
function popup_open_table() {
    var popup = document.getElementById('popup-overlay-table');
    var popup_window = document.getElementById('popup-window-table')
    popup_window.style.display = "block";
    popup.style.display = "block";
    popup.classList.add('popup-message');
}

/* ポップアップを閉じる */
function popup_close_table() {
    var popup = document.getElementById('popup-overlay-table');
    var popup_window = document.getElementById('popup-window-table')
    popup_window.style.display = "none";
    popup.style.display = "none";
    popup.classList.remove('popup-message');
}

/* クリックイベントの登録 */
addEventListener('click', overlay_popup_close_table);

/* タップイベントの登録 */
addEventListener('touchstart', overlay_popup_close_table);



/* オーバレイをクリックした時、ポップアップを閉じる */
function overlay_popup_close_table(e) {
    var popup = document.getElementById('popup-overlay-table');
    var popup_window = document.getElementById('popup-window-table')
    popup_window.style.display = "none";
    popup.classList.remove('popup-message');

    if (e.target == popup) {
        popup.style.display = 'none';
    }
}

// -----------------------------------


// 照明
/* ポップアップを開く */
function popup_open_light() {
    var popup = document.getElementById('popup-overlay-light');
    var popup_window = document.getElementById('popup-window-light')
    popup_window.style.display = "block";
    popup.style.display = "block";
    popup.classList.add('popup-message');
}

/* ポップアップを閉じる */
function popup_close_light() {
    var popup = document.getElementById('popup-overlay-light');
    var popup_window = document.getElementById('popup-window-light')
    popup_window.style.display = "none";
    popup.style.display = "none";
    popup.classList.remove('popup-message');
}

/* クリックイベントの登録 */
addEventListener('click', overlay_popup_close_light);

/* タップイベントの登録 */
addEventListener('touchstart', overlay_popup_close_light);

/* オーバレイをクリックした時、ポップアップを閉じる */
function overlay_popup_close_light(e) {
    var popup = document.getElementById('popup-overlay-light');
    var popup_window = document.getElementById('popup-window-light')
    popup_window.style.display = "none";
    popup.classList.remove('popup-message');
    if (e.target == popup) {
        popup.style.display = 'none';
    }
}

// -----------------------------------


// 収納
/* ポップアップを開く */
function popup_open_storage() {
    var popup = document.getElementById('popup-overlay-storage');
    var popup_window = document.getElementById('popup-window-storage')
    popup_window.style.display = "block";
    popup.style.display = "block";
    popup.classList.add('popup-message');
}

/* ポップアップを閉じる */
function popup_close_storage() {
    var popup = document.getElementById('popup-overlay-storage');
    var popup_window = document.getElementById('popup-window-storage')
    popup_window.style.display = "none";
    popup.style.display = "none";
    popup.classList.remove('popup-message');
}

/* クリックイベントの登録 */
addEventListener('click', overlay_popup_close_storage);

/* タップイベントの登録 */
addEventListener('touchstart', overlay_popup_close_storage);

/* オーバレイをクリックした時、ポップアップを閉じる */
function overlay_popup_close_storage(e) {
    var popup = document.getElementById('popup-overlay-storage');
    var popup_window = document.getElementById('popup-window-storage')
    popup_window.style.display = "none";
    popup.classList.remove('popup-message');
    if (e.target == popup) {
        popup.style.display = 'none';
    }
}

// -----------------------------------


// 雑貨
/* ポップアップを開く */
function popup_open_goods() {
    var popup = document.getElementById('popup-overlay-goods');
    var popup_window = document.getElementById('popup-window-goods')
    popup_window.style.display = "block";
    popup.style.display = "block";
    popup.classList.add('popup-message');
}

/* ポップアップを閉じる */
function popup_close_goods() {
    var popup = document.getElementById('popup-overlay-goods');
    var popup_window = document.getElementById('popup-window-goods')
    popup_window.style.display = "none";
    popup.style.display = "none";
    popup.classList.remove('popup-message');
}

/* クリックイベントの登録 */
addEventListener('click', overlay_popup_close_goods);

/* タップイベントの登録 */
addEventListener('touchstart', overlay_popup_close_goods);

/* オーバレイをクリックした時、ポップアップを閉じる */
function overlay_popup_close_goods(e) {
    var popup = document.getElementById('popup-overlay-goods');
    var popup_window = document.getElementById('popup-window-goods')
    popup_window.style.display = "none";
    popup.classList.remove('popup-message');
    if (e.target == popup) {
        popup.style.display = 'none';
    }
}


// })();