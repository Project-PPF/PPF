// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets-custom
//= require jquery_ujs
//= require turbolinks
//= require_tree .

(function($){
    $(function() { 
        $('#menu').on('click', function() {
            $(this).toggleClass('active');
        });
    });
})(jQuery);


$(function(){
  $(window).scroll(function(){
    var textOffset =$('.top-text').offset();
      if($(this).scrollTop() > textOffset.top){
        $('.top-text').fadeIn(1500);
        $('.bottom-text').delay(500).fadeIn(1500);
      };

    var offset =$('.round-container').offset();
      if($(this).scrollTop()+200 > offset.top){
        $('.top').fadeIn(1000);
        $('.right-top').delay(1000).animate({
          'width':'105px'
        },'linear');

        $('.right').delay(1500).fadeIn(1000);
        $('.right-bottom').delay(2500).animate({
          'width':'105px'
        },'linear');

        $('.bottom').delay(3000).fadeIn(1000);
        $('.left-bottom').delay(4000).animate({
          'width':'105px'
        },'linear');

        $('.left').delay(4500).fadeIn(1000);
        $('.left-top').delay(5500).animate({
          'width':'105px'
        },'linear');
      }
  });
});
