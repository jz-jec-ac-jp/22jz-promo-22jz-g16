// カテゴリ
/* ポップアップを開く */
function popup_open_category() {
    var popup = document.getElementById('popup-overlay-category');
    var popup_window = document.getElementById('popup-window-category')
    popup_window.style.display = "block";
    popup.style.display = "block";
    popup.classList.add('popup-message');
}

/* ポップアップを閉じる */
function popup_close_category() {
    var popup = document.getElementById('popup-overlay-category');
    popup.style.display = "none";
    popup.classList.remove('popup-message');
}

/* クリックイベントの登録 */
addEventListener('click', overlay_popup_close_category);

/* タップイベントの登録 */
addEventListener('touchstart', overlay_popup_close_category);

/* オーバレイをクリックした時、ポップアップを閉じる */
function overlay_popup_close_category(e) {
    var popup = document.getElementById('popup-overlay-category');
    popup.classList.remove('popup-message');
    if (e.target == popup) {
        popup.style.display = 'none';
    }
}