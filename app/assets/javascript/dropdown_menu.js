$(function(){
  $('#js-sideMenuBtn').on('click', function(){
    $('body').toggleClass('side-open');
    $('#js-overlay').on('click', function(){
      $('body').removeClass('side-open')
    });
  });
});