$(function(){
  $('#toggle-target').hide();
  $('#comment-count').on('click', function(){
    var $menu = $(this).next('#toggle-target');
    var $icon = $(this).children('.fas')
    if($menu.is(':hidden')){
      $icon.removeClass('fa-chevron-down').addClass('fa-chevron-up');
    } else {
      $icon.removeClass('fa-chevron-up').addClass('fa-chevron-down');
    }

    $('#toggle-target').slideToggle(500);
  });
});