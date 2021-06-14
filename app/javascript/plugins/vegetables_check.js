const vegetablesCheck = () => {
  const checks = document.querySelectorAll('.vegetable-card');

  checks.forEach(card => {
    card.addEventListener('click', (event) => {
      event.preventDefault();

      const targetID = card.dataset.target;
      const checkbox = document.querySelector(`#${targetID}`);
      checkbox.checked = !checkbox.checked;

      if (checkbox.checked) {
        card.classList.add('checked');
      } else {
        card.classList.remove('checked');
      }
    });
  });
}

export { vegetablesCheck };
