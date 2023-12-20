(function () {
    'use strict'
    let els = document.querySelectorAll('.js-fadeIn');

    els.forEach(function (fadeIn) {
        let windowHeight = window.innerHeight;

        window.addEventListener('scroll', function () {
            let offset = fadeIn.getBoundingClientRect().top;
            let scroll = window.scrollY;

            if (scroll > offset - windowHeight + 250) {
                fadeIn.classList.add('is-scrollIn');
            }
        })
    })

})();