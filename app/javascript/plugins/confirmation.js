import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Connecting Cyclists", "With Independent Stores"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
