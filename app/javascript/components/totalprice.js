const addTotalPriceToForm = () => {
  const startDate = document.getElementById('booking_start_date');
  const endDate = document.getElementById('booking_end_date');
  const totalPrice = document.getElementById('total-price-show-page');
  const hourlyPrice = Number.parseFloat(document.getElementById('price-hour-show-page').innerHTML);
  endDate.addEventListener("change", (event) => {
    totalPrice.innerHTML = "";
    const startDateTime = new Date(startDate.value);
    const endDateTime = new Date(endDate.value);
    const hours = (endDateTime - startDateTime) / 3600000;
    totalPrice.innerHTML = `<p><strong>Total price: $${hours * hourlyPrice}</strong></p>`;
    startDate.addEventListener("change", (event) => {
    totalPrice.innerHTML = "";
    const startDateTime = new Date(startDate.value);
    const endDateTime = new Date(endDate.value);
    const hours = (endDateTime - startDateTime) / 3600000;
    totalPrice.innerHTML = `<strong>Total price: $${hours * hourlyPrice}</strong>`;
    });
    });
  };

export { addTotalPriceToForm }
