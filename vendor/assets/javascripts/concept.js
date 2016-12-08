// $(function(){
//   $(window).scroll(function(){
//     var offset =$('.round-container').offset();
//     if($(this).scrollTop()+50 > offset.top){
//       $('.right-top').stop().animate({
//         'width':'105px'
//       },'linear')
//       $('.right').delay(1000).fadeIn();
//       $('.right-bottom').stop().animate({
//         'width':'105px'
//       },'linear').delay(1500);
//       $('.bottom').delay(2500).fadeIn();
//       $('.left-bottom').stop().animate({
//         'width':'105px'
//       },'linear').delay(3000);
//       $('.left').delay(3500).fadeIn();
//       $('.left-top').stop().animate({
//         'width':'105px'
//       },'linear').delay(4500)
//     }else{
//       $('.right-top','.right-bottom','.left-bottom','.left-top').stop().animate({
//         'width':0
//       },'linear');
//     }
//   });
// });