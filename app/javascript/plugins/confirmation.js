import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const element = document.getElementById('banner-typed-text');
  if (element) {
    new Typed('#banner-typed-text', {
      strings: ["Connecting Cyclists", "With Independent Stores"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
