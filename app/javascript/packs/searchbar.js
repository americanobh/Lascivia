const search = document.getElementById('search-form')

search.addEventListener('keyup', (event) => {
 const keyword = event.target.value;
 console.log(keyword);
  // fetch(`https://localhost:3000=?${keyword}`)
  //   .then(response => response.json())
  //   .then((data) => {
  //     console.log(data);
  //     // data.words.forEach((result) => {

  //     // });
  //   });
});

// FAZER CHAMADA AJAX FETCH DATA
// CRIAR SEARCHCONTROLLER TO HANDLE DATA
// RENDERIZAR OBJETOS DE PRODUCT QUE A API DATA ENTREGAR EM JSON
//
// TODO: Autocomplete the input with AJAX calls.
