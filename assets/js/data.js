(function ($) {
  "use strict";
  function thmOwlInit() {
    // owl slider
    let medioxowlCarousel = $(".mediox-owl__carousel");
    if (medioxowlCarousel.length) {
      medioxowlCarousel.each(function () {
        let elm = $(this);
        let options = elm.data("owl-options");
        let thmOwlCarousel = elm.owlCarousel(
          "object" === typeof options ? options : JSON.parse(options)
        );
        elm.find("button").each(function () {
          $(this).attr("aria-label", "carousel button");
        });
      });
    }
    let medioxowlCarouselNav = $(".mediox-owl__carousel--custom-nav");
    if (medioxowlCarouselNav.length) {
      medioxowlCarouselNav.each(function () {
        let elm = $(this);
        let owlNavPrev = elm.data("owl-nav-prev");
        let owlNavNext = elm.data("owl-nav-next");
        $(owlNavPrev).on("click", function (e) {
          elm.trigger("prev.owl.carousel");
          e.preventDefault();
        });

        $(owlNavNext).on("click", function (e) {
          elm.trigger("next.owl.carousel");
          e.preventDefault();
        });
      });
    }

    let medioxowlCarouselWithCounter = $(
      ".mediox-owl__carousel--with-counter"
    );
    if (medioxowlCarouselWithCounter.length) {
      medioxowlCarouselWithCounter.each(function () {
        let elm = $(this);
        let options = elm.data("owl-options");

        function addLeadingZero(num, size) {
          num = num.toString();
          while (num.length < size) num = "0" + num;
          return num;
        }
        elm
          .on("initialized.owl.carousel", function (event) {
            var idx = event.item.index;
            var carousel = event.relatedTarget;
            var carouselCount = carousel.items().length;

            if (!event.namespace) {
              return;
            }

            elm.append(
              '<div class="mediox-owl__carousel__counter"><span class="mediox-owl__carousel__counter__current"></span> <span class="mediox-owl__carousel__counter__total"></span></div>'
            );
            elm
              .find(".mediox-owl__carousel__counter__current")
              .text(
                addLeadingZero(carousel.relative(carousel.current()) + 1, 2)
              );
            elm
              .find(".mediox-owl__carousel__counter__total")
              .text(addLeadingZero(carouselCount, 2));
          })
          .owlCarousel(
            "object" === typeof options ? options : JSON.parse(options)
          )
          .on("changed.owl.carousel", function (event) {
            var carousel = event.relatedTarget;
            elm
              .find(".mediox-owl__carousel__counter__current")
              .text(
                addLeadingZero(carousel.relative(carousel.current()) + 1, 2)
              );
          });
      });
    }
  }

  // window load event

  $(window).on("load", function () {
    if ($(".preloader").length) {
      $(".preloader").fadeOut();
    }
    thmOwlInit();

    if ($(".circle-progress").length) {
      $(".circle-progress").appear(function () {
        let circleProgress = $(".circle-progress");
        circleProgress.each(function () {
          let progress = $(this);
          let progressOptions = progress.data("options");
          progress.circleProgress(progressOptions);
        });
      });
    }
    if ($(".masonry-layout").length) {
      $(".masonry-layout").imagesLoaded(function () {
        $(".masonry-layout").isotope({
          layoutMode: "masonry"
        });
      });
    }
    if ($(".fitRow-layout").length) {
      $(".fitRow-layout").imagesLoaded(function () {
        $(".fitRow-layout").isotope({
          layoutMode: "fitRows"
        });
      });
    }

    if ($(".post-filter").length) {
      var postFilterList = $(".post-filter li");
      // for first init
      $(".filter-layout").isotope({
        filter: ".filter-item",
        animationOptions: {
          duration: 500,
          easing: "linear",
          queue: false
        }
      });
      // on click filter links
      postFilterList.on("click", function () {
        var Self = $(this);
        var selector = Self.attr("data-filter");
        postFilterList.removeClass("active");
        Self.addClass("active");

        $(".filter-layout").isotope({
          filter: selector,
          animationOptions: {
            duration: 500,
            easing: "linear",
            queue: false
          }
        });
        return false;
      });
    }

    if ($(".post-filter.has-dynamic-filter-counter").length) {
      // var allItem = $('.single-filter-item').length;

      var activeFilterItem = $(".post-filter.has-dynamic-filter-counter").find(
        "li"
      );

      activeFilterItem.each(function () {
        var filterElement = $(this).data("filter");
        var count = $(".filter-layout").find(filterElement).length;
        $(this).append("<sup>[" + count + "]</sup>");
      });
    }

  });
})(jQuery);