const plus = document.querySelector("#plus");
const minus = document.querySelector("#minus");
let qty = 1;

function increment() {

    document.querySelector("#qty").value = ++qty;
    document.querySelector("#price").innerHTML =`<p>${qty*65000.00}</p>`;
    document.querySelector("#total").innerHTML =`<p>${300.00+qty*65000}</p>`;

}
function decrement() {
    document.querySelector("#qty").value = --qty;
    document.querySelector("#price").innerHTML =`<p>${qty*65000.00}</p>`;
    document.querySelector("#total").innerHTML =`<p>${300+qty*65000}</p>`;
}
plus.addEventListener("click", increment);
minus.addEventListener("click", decrement);