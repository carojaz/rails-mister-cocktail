const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  const form = document.querySelector("body > div.banner > div.navbar.fixed-top > form");
  const bannerHeight = (window.innerHeight)*0.7;
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= bannerHeight) {
        navbar.classList.add('navbar-white');
        form.classList.remove('d-none');
      } else {
        navbar.classList.remove('navbar-white');
        form.classList.add('d-none');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

