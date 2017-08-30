$(document).ready(function(){

  $(".navbar-toggle").on("click", function(){
    $(".navbar-container").toggleClass("searchable");
  });


});


$( "#search-icon" ).click(function() {
  $( "#search-field" ).focus();
});
