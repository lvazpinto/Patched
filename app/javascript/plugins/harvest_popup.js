import swal from 'sweetalert';

const initHarvestPopup = () => {
  const popup = document.querySelector('.js-harvest-popup');

  if (popup) {
    swal({
      title: "Good job!",
      text: popup.innerText,
      icon: "success",
      button: "AWESOME!!",
    });
  }
}

export { initHarvestPopup };

