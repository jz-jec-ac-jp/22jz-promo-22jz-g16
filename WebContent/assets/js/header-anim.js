(function () {
  'use strict'
  window.addEventListener("scroll", function () {
    var currentScroll = window.pageYOffset;
    var header = document.getElementById("header-animation");

    var headerHeight = header.offsetHeight;

    if (currentScroll >= 100) {
      header.style.top = "0";
      // } else if (currentScroll < this.lastScroll) {
      //   header.style.top = headerHeight + "px";
    } else {
      header.style.top = "-100px";
    }
    this.lastScroll = currentScroll;
  }, false);
})();
