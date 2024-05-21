// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// Import Bootstrap and its dependencies
import 'bootstrap/dist/js/bootstrap'
import 'bootstrap/dist/css/bootstrap'

// Import Flatpickr and its CSS
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.css"

// Initialize Rails, Turbolinks, and ActiveStorage
Rails.start()
Turbolinks.start()
ActiveStorage.start()

// Initialize Flatpickr on elements with the "datepicker" class
document.addEventListener("turbolinks:load", () => {
  flatpickr(".datepicker", {
    dateFormat: "Y/m/d",
    locale: "ja"
  });
});
