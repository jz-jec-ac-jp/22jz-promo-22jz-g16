// (function () {
//     'use strict'
    // 未入力チェックを行う関数
    function check() {
        // 各フォーム要素を取得
        const text_alert = document.getElementsByClassName("text-input");
        const text_alert_area = document.getElementsByClassName("text-area");


        let false_count = 0;
        for (let i = 0; i < text_alert.length; i++) {
            if (text_alert[i].value === "") {
                false_count = 1;
                text_alert[i].classList.add("border-input")
            } else {
                // text_alert[i].style.border = "solid 1px #362918";
                text_alert[i].classList.remove("border-input")
            }
        }

        for (let i = 0; i < text_alert_area.length; i++) {
            if (text_alert_area[i].value === "") {
                text_alert_area[i].classList.add("border-input");
                false_count = 1;
            } else {
                text_alert_area[i].classList.remove("border-input");
            }
        }

        const text_alert_select = document.getElementsByClassName("text-input-select");
        const error_message_text = document.getElementsByClassName("error-message-select");
    
        for (let i = 0; i < text_alert_select.length; i++) {
            if (text_alert_select[i].value === "") {
                text_alert_select[i].classList.add("border-select");
                false_count = 1;
                error_message_text[i].classList.remove("alert-select-none");
                error_message_text[i].classList.add("alert-select-block");
            } else {
                text_alert_select[i].classList.remove("border-select");
                error_message_text[i].classList.add("alert-select-none");
                error_message_text[i].classList.remove("alert-select-block");
            }
        }

        if (false_count = 1) {
            return false;
            // alert("")
        } else {
            return true;
        }
    }

    function check_select() {
        const text_alert_select = document.getElementsByClassName("text-input-select");
        const error_message_text = document.getElementsByClassName("error-message-select");
    
        for (let i = 0; i < text_alert_select.length; i++) {
            if (text_alert_select[i].value === "") {
                text_alert_select[i].classList.add("border-select");
                false_count = 1;
                error_message_text[i].classList.remove("alert-select-none");
                error_message_text[i].classList.add("alert-select-block");
            } else {
                text_alert_select[i].classList.remove("border-select");
                error_message_text[i].classList.add("alert-select-none");
                error_message_text[i].classList.remove("alert-select-block");
            }
        }
        // if (false_count = 1) {
        //     return false;
        //     // alert("")
        // } else {
        //     return true;
        // }
    }
// })();