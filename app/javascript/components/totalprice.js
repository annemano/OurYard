const addTotalPriceToForm = () => {
  const startDate = document.getElementById('booking_start_date');
  const endDate = document.getElementById('booking_end_date');
  const totalPrice = document.getElementById('total-price-show-page');
  const hourlyPrice = Number.parseFloat(document.getElementById('price-hour-show-page').innerHTML);
  endDate.addEventListener("change", (event) => {
    totalPrice.innerHTML = "";
    const startDateTime = new Date(startDate.value);
    const endDateTime = new Date(endDate.value);
    console.log(startDateTime)
    console.log(endDateTime)
    const hours = (endDateTime - startDateTime) / 3600000;
    console.log(hours)
    totalPrice.innerHTML = `<p><strong>Total price: $${hours * hourlyPrice}</strong></p>`;
    });
  };

export { addTotalPriceToForm }
