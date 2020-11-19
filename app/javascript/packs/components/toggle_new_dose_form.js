const toggleNewDoseForm = () => {
  const zone = document.querySelector('.add-dose');
  if (zone) {
    zone.addEventListener('click', (event) => {
      const formElement = document.querySelector('.add-dose-form');
      formElement.classList.toggle('d-none');
    } )
  }
}

export { toggleNewDoseForm }
