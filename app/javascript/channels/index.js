// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

const modal = document.getElementById('modal-btn');
const something = document.getElementById('tbody');

modal.addEventListener('click', (event) => {
  console.log("It works!");
  something.innerHTML = '';
  fetch('/orders')
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      data.orders.forEach((order_item) => {
        const product = `<tr> <th scope="row">${order_item.quantity}</th> <td>${order_item.product}</td> <td>${order_item.price}</td> <td><a><i class="fas fa-times"></i></a></td> </tr>`;
        something.insertAdjacentHTML("afterbegin", product);
      });
      const total = `<tr class="total"> <th scope="row"></th> <td><strong>Total</strong></td> <td>R$ ${data.total_sum}</td> <td></td> </tr>`
      something.insertAdjacentHTML('beforeend', total);
    });
})
