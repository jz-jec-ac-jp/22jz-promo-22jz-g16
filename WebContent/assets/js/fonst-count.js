// (function () {
//     'use strict'

    function countLength(text, field) {

        const text_area = document.getElementsByClassName("write-div");
        const text_alert = document.getElementsByClassName("error-message");

        document.getElementById(field).innerHTML = text.length;

        if (field === "textlength0" && text.length > 5) {
            textlength0.style.color = "red";
        } else if (field === "textlength0" && text.length < 5) {
            textlength0.style.color = "blue";
        }

        if (field === "textlength1" && text.length > 5) {
            textlength1.style.color = "red";
        } else if (field === "textlength1" && text.length < 5) {
            textlength1.style.color = "blue";
        }

        if (field === "textlength2" && text.length > 5) {
            textlength2.style.color = "red";
        } else if (field === "textlength2" && text.length < 5) {
            textlength2.style.color = "blue";
        }

        if (field === "textlength3" && text.length > 5) {
            textlength3.style.color = "red";
        } else if (field === "textlength3" && text.length < 5) {
            textlength3.style.color = "blue";
        }

        if (field === "textlength4" && text.length > 5) {
            textlength4.style.color = "red";
            text_area.classList.remove("border-input")
            // text_alert.
        } else if (field === "textlength4" && text.length < 5) {
            textlength4.style.color = "blue";
            text_area.classList.add("border-input")
            // text_area.style.border = "1px solid #ff3700";
        }
    }
// })();