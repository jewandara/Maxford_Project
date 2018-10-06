if ($('#streamer-social-backup')) {
    $('#streamer-social-backup').html($('.action-footer .streamer-social').html());
}

var prev_width = $(window).width();

window.onresize = function (event) {
    var w_width = $(window).width();

    if ((w_width > 833 && prev_width <= 833) || (w_width <= 833 && prev_width > 833)
			 || (w_width > 850 && prev_width <= 850) || (w_width <= 850 && prev_width > 850)) {

        if ($('#streamer-social-backup')) {
            $('.action-footer .streamer-social').html($('#streamer-social-backup').html());
            jsTabsetInit();
            slider();
            headerTabs();
        }

        if ((w_width > 850 && prev_width <= 850) || (w_width > 833 && prev_width <= 833)) {
            $('form#search').show();
        }

        if ((w_width <= 833 && prev_width > 833) || (w_width <= 850 && prev_width > 850)) {
            $('form#search').hide();
        }

        prev_width = w_width;
    }

    if ((w_width > 383 && prev_width <= 383) || (w_width > 400 && prev_width <= 400)) {
        $('.utility ul').show();
        $(".header-mobile a.utility-trigger").hide();
        $("a.utility-trigger").addClass("active");
        prev_width = w_width;
    }

    if ((w_width <= 383 && prev_width > 383) || (w_width <= 400 && prev_width > 400)) {
        $('.utility ul').hide();
        $(".header-mobile a.utility-trigger").show();
        $("a.utility-trigger").removeClass("active");
        prev_width = w_width;
    }

}