import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["If by free spirits you mean open bar", "then yes, I love free spirits"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
