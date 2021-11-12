jQuery(document).ready(function($) {

    var Mwidth = 960; // mobile devices
    if ($(window).width() > Mwidth) {
        var headerHeight = $('.main-menu').height();
        $(window).on('scroll', {
                TopPrev: 0
            },
            function() {
                var TopCurrent = $(window).scrollTop();
                //check if user is scroll up
                if (TopCurrent < this.TopPrev) {
                    //if scroll up
                    if (TopCurrent > 0 && $('.main-menu').hasClass('fixed-menu')) {
                        $('.main-menu').addClass('visible-scroll-up');
                    } else {
                        $('.main-menu').removeClass('visible-scroll-up fixed-menu');
                    }
                } else {
                    //if scroll down
                    $('.main-menu').removeClass('visible-scroll-up');
                    if (TopCurrent > headerHeight && !$('.main-menu').hasClass('fixed-menu')) $('.main-menu').addClass('fixed-menu');
                }
                this.TopPrev = TopCurrent;
            });
    }
});