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
      const sum = parseInt(data.total_sum);
      const total = `<tr class="total"> <th scope="row"></th> <td><strong>Total</strong></td> <td>R$ ${sum}</td> <td></td> </tr>`
      something.insertAdjacentHTML('beforeend', total);
    });
})

const plus = document.getElementById('up');
const minus = document.getElementById('down');
const number = document.getElementById('myNumber');

plus.addEventListener('click', (event) => {
  const num = parseInt(number.value);
  number.value = num + 1;
})

minus.addEventListener('click', (event) => {
  const num = parseInt(number.value);
  if(num > 1)
  number.value = num - 1;
})
