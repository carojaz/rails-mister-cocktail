const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log(window.scrollY);
      if (window.scrollY >= 260) {
        navbar.classList.add('navbar-white');
      } else {
        navbar.classList.remove('navbar-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
