$(function() {
  $('a[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollLeft: target.offset().left
        }, 500);
        return false;
      }
    }
  });


  $('#button1').click(function () {
    $('input:text').text($('#basic').val());
  });

  $('#button2').click(function () {
    $('input:text').text($('#story').val());
  });

  $('#button3').click(function () {
    $('input:text').text($('#seats').val());
  });

  var executed = false;
  $('.question-container').bind('mousewheel', function(e) {
    console.log(e)
    if (!executed) {
      executed = true;
      var delta = e.originalEvent.wheelDelta;
      if(delta < 0) {
        if($(this).data('next')) {
          $('html, body').animate({
            scrollLeft: $($(this).data('next')).offset().left
          }, 500);
        }
      } else if (delta > 0) {
        if($(this).data('prev')) {
          $('html, body').animate({
            scrollLeft: $($(this).data('prev')).offset().left
          }, 500);
        }

      }


      setTimeout(function() {
        executed = false
      }, 1000)
    };
  });

  $('.questions-container input').on('keydown', function(e) {
    if(e.keyCode == 13) {
      e.preventDefault();
      $(this).parent().parent().parent().find('a').click()
    }
  })
});
