const updateCardClass = (checkbox, card) => {
  if (checkbox.checked) {
    card.classList.add('checked');
  } else {
    card.classList.remove('checked');
  }
}

const vegetablesCheck = () => {
  const checks = document.querySelectorAll('.js-vegetable-item');

  checks.forEach(card => {
    const targetID = card.dataset.target;
    const checkbox = document.querySelector(`#${targetID}`);
    updateCardClass(checkbox, card);

    card.addEventListener('click', (event) => {
      event.preventDefault();

      checkbox.checked = !checkbox.checked;
      updateCardClass(checkbox, card);
    });
  });
}

export { vegetablesCheck };
