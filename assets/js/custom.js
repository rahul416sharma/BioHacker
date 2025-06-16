
AOS.init({ once: true });
$('.main-menu').hover(function(){

  if($(this).hasClass('have-children')){
    console.log('aaa');
    $('header').addClass("wrapper-nav-mega");
    $(this).addClass('nav-active');    
    $(this).find('.sub-nav-child-wrapper ul li.sub-nav-hav-children:first-child').addClass('sub-nav-active');   

  }else {
    $('header').addClass("wrapper-nav-default");
    $(this).addClass('nav-active');     
  }

}, function(){

  if($(this).hasClass('have-children')){
    $('header').removeClass("wrapper-nav-mega", 3000);
    $(this).removeClass('nav-active');
    $(this).find('.sub-nav-child-wrapper ul li.sub-nav-hav-children:first-child').removeClass('sub-nav-active');   

  }else {
    $('header').removeClass("wrapper-nav-default", 3000);
    $(this).removeClass('nav-active');
  }

});

$(".sub-nav-child").hover(function(){
  
  $(this).closest('.sub-nav-hav-children').addClass('active-child-nav');

}, function(){
  $(this).closest('.sub-nav-hav-children').removeClass('active-child-nav');
});

$(".sub-nav-hav-children").hover(function(){
  $(this).removeClass('sub-nav-active');
});


  /**
   * Home Sliders
   */

//   $(document).ready(function(){

//    var $status = $('.slider-clinic-lab-paginatoin');
//    var $slickElement = $('.slider-clinic-lab');

//    $slickElement.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
        
//        if(!slick.$dots){
//            return;
//        }

//    var i = (currentSlide ? currentSlide : 0) + 1;

//        $status.text(i + '/' + (slick.$dots[0].children.length));

//    });

//  $slickElement.slick({
//    dots: true,
//    infinite: true,
//    speed: 1000,
//    slidesToShow: 1,
//    centerMode: false,
//    variableWidth: true,
//    autoplay: false,
//    arrows: true,
//    prevArrow: '<div class="slick-prev"><span class="buller-white"></span></div>',
//    nextArrow: '<div class="slick-next"><span class="buller-white"></span></div>',
//    responsive: [
//                {
//                    breakpoint: 768,
//                    settings: {
//                        slidesToShow: 1,
//                        arrows: false,
//                        dots: true,
//                        swipeToSlide: true,
//                        infinite: true,
//                        autoplay:false,
//                        slidesToScroll: 1,

//                    }
//                }
//      ]
//  });
//});

//$('.testimonial-slider').slick({
//    dots: false,
//    infinite: true,
//    speed: 900,
//    slidesToShow: 1,
//    adaptiveHeight: true,
//    arrows:true,
//    autoplay:true,
//    arrows: true,
//    prevArrow: $('.ts-prev'),
//    nextArrow: $('.ts-next'),
//}).on('setPosition', function (event, slick) {
//  slick.$slides.css('height', slick.$slideTrack.height() + 'px');
//});


//$("#bookingModal").on('click',function(e){

//  $('#bookFormModel').modal('show');

//});

// $(".whatsapp-switch").on('change', function() {
                
//                if ($(this).is(':checked')) {
                    
//                    $(this).next('span').text('Yes');
//                    $(this).closest('.what-app-number').find('.frm_whats_app').prop("disabled", true);

//                } else {
                    
//                    $(this).next('span').text('');
//                    $(this).closest('.what-app-number').find('.frm_whats_app').prop("disabled", false);


//                }
//});


//function whatsappswitch(e){
   

//    if ($(e).is(':checked')) {

                    
//        $(e).next('span').text('Yes');
//        $(e).closest('.what-app-number').find('.frm_whats_app').prop("disabled", true);

//    } else {

//        $(e).next('span').text('');
//        $(e).closest('.what-app-number').find('.frm_whats_app').prop("disabled", false);

//    }

//}


// function craetearray() {

//    var chioce_array = [];

//    $('.check_drip_choice').each(function () {

//        if(this.checked){
            
//            chioce_array.push($(this).val());
//        }

//    });

//}


//$(document).ready(function(){

//    $('.drip-bags-slider').slick({
      
//      dots: false,
//      infinite: true,
//      speed: 900,
//      slidesToShow: 4,
//      adaptiveHeight: true,
//      arrows:true,
//      autoplay:true,
//      arrows: true,
//      prevArrow: '<div class="slick-prev"></div>',
//      nextArrow: '<div class="slick-next"></div>',
//      responsive: [
//                {
//                    breakpoint: 768,
//                    settings: {
//                        slidesToShow: 1.04,
//                        arrows: false,
//                        dots: true,
//                    }
//                }
//      ]

//    });


//    //create group list
//    craetearray();

//    //choose drip
//    $(".check_drip_choice").on('change', function() {

//      craetearray();

//      if ($(this).is(':checked')) {

//        $(this).parents('li').addClass('active');
   
//      } else {

//        $(this).parents('li').removeClass('active');

//      }

//    });


//});


//$("#triggeredSearchss").on('click',function(){

  
//  $("#headerSearch").toggleClass('active-search');

//});



//$(".header-search").on('click',function(){

  
//  $("#headerSearch").toggleClass('active-search');

//});


//$("#close-search").on('click',function(){
  
//  $("#headerSearch").removeClass('active-search');

//});


//$('.doctors-treatments-slider').slick({
  
//  dots: false,
//  infinite: true,
//  speed: 900,
//  slidesToShow: 4,
//  arrows:false,
//  autoplay:false,
//  arrows: false,

//});


//$('.treatemetn-categories-slider').slick({
//  dots: false,
//  infinite: true,
//  speed: 900,
//  slidesToShow: 4,
//  slidesToScroll: 4,
//  mobileFirst: true,
//  arrows:false,
//  autoplay:false,
//  arrows: false,
//  rows: 1,
//  arrows: true,
//  prevArrow: '<div class="slick-prev"></div>',
//  nextArrow: '<div class="slick-next"></div>',
//  responsive: [
//      {
//      breakpoint: 768,
//      settings: {
//        slidesToShow: 2,
//        slidesToScroll: 1,
//        slidesPerRow: 1,
//        rows: 1,
//      }
//  }]
//});


//$('.treatemetn-categories-slider').slick({
//    dots: false,
//    slidesPerRow: 3,
//    rows: 2,
//    responsive: [
//    {
//      breakpoint: 768,
//      settings: {
//        slidesPerRow: 2,
//        slidesPerRow: 1,
//        rows: 1,
//      }
//    }
//  ]
//});


//$('.carousel-post').slick({
//  slidesToShow: 1.05,
//  slidesToScroll: 1,
//  mobileFirst: true,
//  arrows: false,
//  infinite: false,
//  responsive: [
//        {
//                breakpoint: 768,
//                settings: 'unslick',
//                infinite: false,
//        }
//  ]
//});


//$('.mobile-keys-slider').slick({
//  slidesToShow: 1.2,
//  slidesToScroll: 1,
//  mobileFirst: true,
//  arrows: false,
//  responsive: [
//        {
//                breakpoint: 768,
//                settings: 'unslick'
//        }
//  ]
//});


$("#menyAvPaa").on('click',function(){

    if ($(this).is(':checked')) {
           // Do something...
           $("body").addClass("overflowhidden");
    }else {
           $("body").removeClass("overflowhidden");
    }

});


$(".toggle-sub-nav").on('click',function(e){

    e.preventDefault();

    $(this).closest('.mobile-nav-has-children').find('.mobile-sub-nav-container').slideToggle();

});

$("li.mobile-sub-nav-children").on('click',function(e){  

  if (e.target !== this)
    return;

  if(!$(this).find('ul').is(':visible')){

    $('.mobile-sub-nav-children ul').slideUp();
    $(this).find('ul').slideToggle();

  } else {
    $('.mobile-sub-nav-children ul').slideUp();
  
  }

});


$(document).ready(function(){

  $(window).scroll(function() {    

                
    var scroll = $(window).scrollTop();

    if(window.innerWidth > 768){



        if (scroll >= 200) {
            $(".nav-wrappper").addClass("nav-fixed");
        } else {
            $(".nav-wrappper").removeClass("nav-fixed");
            }                    
    }

  });

});


$('.moreless-button').click(function(e) {

  e.preventDefault();

  $('.moretext').slideToggle();
  if ($('.moreless-button').text() == "Read more") {
    $(this).text("Read less")
  } else {
    $(this).text("Read more")
  }
});


