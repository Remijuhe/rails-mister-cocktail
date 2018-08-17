import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Sex on the Beach", "Bloody Mary", "Pussy Lemonade"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
