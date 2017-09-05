$(document).ready(function(){
  $(".reward-card ").click(function(){
    $(".reward-card").removeClass("active");
    $(this).addClass("active");
  });
});

$(document).ready(function() {
  $('.btn-no-donation').attr('disabled', true);
  $('#number-of-seats').change(function() {
    console.log('clicked')
    var quantity = parseInt($('#number-of-seats').val());
    var price = parseInt($('label#price-per-seat').data("price"));
    console.log(quantity);
    console.log(price);

    var total = quantity * price;
    $('#total-price').text("€ " + total);
    var disable = false;
     $('#number-of-seats').each(function(){
      if($(this).val()==""){
        disable = true;
      }
     });
    $('.btn-no-donation').prop('disabled', disable);
  });
});

$(document).ready(function() {
  $('.btn-order').attr('disabled', true);
  $('#order_amount').keyup(function () {
    var disable = false;
     $('#order_amount').each(function(){
      if($(this).val()==""){
        disable = true;
      }
     });
  $('.btn-order').prop('disabled', disable);
  });
});
