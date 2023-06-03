// Entry point for the build script in your package.json
//= require flatpickr

import flatpickr from "flatpickr";

document.addEventListener("DOMContentLoaded", () => {
  flatpickr(".datepicker", {
    minDate: "today",
  });
});

import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import './flip_card';
