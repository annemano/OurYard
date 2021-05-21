import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["backyard", "outdoor space", "patio", "pool", "deck"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
