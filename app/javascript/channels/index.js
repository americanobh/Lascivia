// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

const modal = document.getElementById('modal-btn');
const something = document.getElementById('');

modal.addEventListener('click', (event) => {
  console.log("It works!");
  something.innerHTML = '';
  fetch('/orders')
    .then(response => response.json())
    .then((order_items) => {
      console.log(order_items);
      order_items.forEach((order_item) => {
        const product = `<li>${order_item}</li>`;
        something.insertAdjacentHTML("afterbegin", product);
      });
    });
})
