$(function(){

  $('.tab').click(function() {

    $('.tab').removeClass('active');
    $(this).addClass('active');

    $('.tab-content').addClass('hidden');
    var content = $(this).data('target');
    $(content).removeClass('hidden');

  });

});

