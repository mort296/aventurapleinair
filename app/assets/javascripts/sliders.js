$(document).ready(function() {
  // The slider being synced must be initialized first
  $('#carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 210,
    itemMargin: 5,
    asNavFor: '#slider'
  });
   
  $('#slider').flexslider({
    animation: "fade",
    controlNav: false,
    animationLoop: true,
    slideshow: true,
    slideshowSpeed: 4000,
    pauseOnAction: false,
    sync: "#carousel"
  });
});