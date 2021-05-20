import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    time_24hr: true
  });
}

// const flatpickr = require("flatpickr");

export { initFlatpickr };
