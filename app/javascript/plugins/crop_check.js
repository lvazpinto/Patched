const initCropCheck = () => {
  const checkLink = document.querySelector('.js-crop-check');

  if (checkLink) {
    const form = document.getElementById(checkLink.dataset.submit);
    const planted = document.getElementById('planted_check');

    if (planted.checked) {
      checkLink.classList.add('checked');
    } else {
      checkLink.addEventListener('click', (event) => {
        event.preventDefault();
        form.submit();
      });
    }
  }
}

export { initCropCheck };
