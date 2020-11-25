window.addEventListener('load', () => {
  const priceInput = document.getElementById("price");
  const addTaxDom = document.getElementById("add-tax-price");
  const profit = document.getElementById('profit');
  priceInput.addEventListener("input", () => {
  const inputValue = priceInput.value;
    addTaxDom.innerHTML = Math.floor(inputValue / 10);
    profit.innerHTML = inputValue - addTaxDom.innerHTML;
  console.log(inputValue);
  })
});