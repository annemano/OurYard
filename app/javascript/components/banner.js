import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typedText = document.getElementById('banner-typed-text')
  if (typedText) {
    new Typed('#banner-typed-text', {
    strings: ["backyard", "outdoor space", "patio", "pool", "deck"],
    typeSpeed: 100,
    loop: true
    });
  }
}
export { loadDynamicBannerText };
