$( document ).ready(function() {
    
    
    $(window).scroll(function() {
        var nav = $('#navbarMain');
        var top = 100;
        if ($(window).scrollTop() >= top) {
    
            nav.addClass('bg-custom');
    
        } else {
            nav.removeClass('bg-custom');
        }
    });

    
    
    $("header.video").background({
        source: {
            poster: "img/cover2.png",
            mp4: "mp4/semanailast.mp4"
        }
        

    });

    
});
$(function () {
    $('a[href="#search"]').on('click', function(event) {
        event.preventDefault();
        $('#search').addClass('open');
        $('#search > form > input[type="search"]').focus();
    });
    
    $('#search, #search button.close').on('click keyup', function(event) {
        if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
            $(this).removeClass('open');
        }
    });
});


