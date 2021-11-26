import Swiper, { Autoplay, EffectFade, Navigation, Pagination } from 'swiper';

import 'swiper/swiper.scss';
import 'swiper/components/navigation/navigation.min.css';
import 'swiper/components/pagination/pagination.min.css';
import 'swiper/components/effect-fade/effect-fade.min.css';




const initSwiper = () => {
  if (document.querySelector(".mySwiper")) {
    Swiper.use([Navigation, Pagination, Autoplay]);
    const swiper = new Swiper(".mySwiper", {
      slidesPerView: 1,
      spaceBetween: 30,
      loop: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  }
};


const initSwiperFlip = () => {
  if (document.querySelector(".myFlipSwiper")) {
    Swiper.use([Navigation, Pagination, EffectFade]);
    const flipSwiper = new Swiper(".myFlipSwiper", {
      spaceBetween: 30,
      effect: "fade",
      loop: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  }
};


export { initSwiper, initSwiperFlip };
