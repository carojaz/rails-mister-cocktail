const toggleReview = () => {
  const zone = document.querySelector("body > div.cocktail-info > div > div.review-list > .btn-cocktail");
  if (zone) {
    zone.addEventListener('click', (event) => {
      const formElement = document.querySelector(".review-form");
      formElement.classList.toggle('d-none');
      formElement.scrollIntoView(true);

    } )
  }
}

export { toggleReview }
