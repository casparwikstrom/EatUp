$(document).ready(function(){
  $(".reward-card ").click(function(){
    $(".reward-card").removeClass("active");
    $(this).addClass("active");
  });
});

$(document).ready(function() {
  $('#number-of-seats').change(function() {
    console.log('clicked')
    var quantity = parseInt($('#number-of-seats').val());
    var price = parseInt($('label#price-per-seat').data("price"));
    console.log(quantity);
    console.log(price);

    var total = quantity * price;
    $('#total-price').text("€ " + total);
  });
});

