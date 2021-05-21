const addTotalPriceToForm = () => {
  const startDate = document.getElementById('booking_start_date');
  const endDate = document.getElementById('booking_end_date');
  const totalPriceShow = document.getElementById('total-price-show-page');
  if (totalPriceShow !== null) {
    const hourlyPrice = Number.parseFloat(document.getElementById('price-hour-show-page').innerHTML);
    endDate.addEventListener("change", (event) => {
    totalPriceShow.innerHTML = "";
    const startDateTime = new Date(startDate.value);
    const endDateTime = new Date(endDate.value);
    const hours = (endDateTime - startDateTime) / 3600000;
    totalPriceShow.innerHTML = `<p><strong>Total price: $${hours * hourlyPrice}</strong></p>`;
    startDate.addEventListener("change", (event) => {
    totalPriceShow.innerHTML = "";
    const startDateTime = new Date(startDate.value);
    const endDateTime = new Date(endDate.value);
    const hours = (endDateTime - startDateTime) / 3600000;
    totalPriceShow.innerHTML = `<strong>Total price: $${hours * hourlyPrice}</strong>`;
    });
    });
  }
};

const addTotalPriceToEdit = () => {
  const startDate = document.getElementById('booking_start_date');
  const endDate = document.getElementById('booking_end_date');
  const totalPriceEdit = document.getElementById('total-price-edit-page');
  if (totalPriceEdit !== null) {
    const hourlyPrice = Number.parseFloat(document.getElementById('price-hour-edit-page').innerHTML);
    endDate.addEventListener("change", (event) => {
    totalPriceEdit.innerHTML = "";
    const startDateTime = new Date(startDate.value);
    const endDateTime = new Date(endDate.value);
    const hours = (endDateTime - startDateTime) / 3600000;
    totalPriceEdit.innerHTML = `<p><strong>Total price: $${hours * hourlyPrice}</strong></p>`;
    startDate.addEventListener("change", (event) => {
    totalPriceEdit.innerHTML = "";
    const startDateTime = new Date(startDate.value);
    const endDateTime = new Date(endDate.value);
    const hours = (endDateTime - startDateTime) / 3600000;
    totalPriceEdit.innerHTML = `<p><strong>Total price: $${hours * hourlyPrice}</strong></p>`;
    });
    });
  }
};

export { addTotalPriceToForm, addTotalPriceToEdit }
