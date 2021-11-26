import Swiper, { Autoplay, EffectFlip, Navigation, Pagination } from 'swiper';

import 'swiper/swiper.scss';
import 'swiper/components/navigation/navigation.min.css';
import 'swiper/components/pagination/pagination.min.css';
import 'swiper/components/effect-flip/effect-flip.min.css';




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
    Swiper.use([Navigation, Pagination, EffectFlip]);
    const flipSwiper = new Swiper(".myFlipSwiper", {
      effect: "flip",
      grabCursor: true,
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
