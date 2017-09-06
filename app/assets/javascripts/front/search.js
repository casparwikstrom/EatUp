$(function(){
  $('#search-form-partial').on('click', ".type_checkbox", function(e){
    $(this).toggleClass('checked_on');
    var input = $(this).find('.type_input');

    if (input.attr('checked')) {
      input.removeAttr('Checked');
    } else {
      input.attr('checked', true);
    }
    $('#fancy-form').submit();
  });
  $("#search-form-partial").on("click", ".fa-times", function(){
     $('#fancy-form').submit();
  });
  $("#search-form-partial").on("click", ".select", function(){
    $(this).toggleClass("fa-caret-down").toggleClass("fa-caret-up");
    $('.categories-list').toggleClass("hidden");
  });
});
