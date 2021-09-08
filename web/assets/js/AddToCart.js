
$(document).ready(function (){
    update_amounts();
    $('.qty, .price').on('keyup keypress blur change' ,
        function (e){
        update_amounts();
        });
});

 function update_amounts(){
    let sum = 0.0;
    $('#myTable > tbody > tr').each(function (){
        const qty = $(this).find('.qty').val();
        const price = $(this).find('.price').val();
        const amount = (qty * price);
        sum+=amount;
        $(this).find(' .amount').text(''+amount);

    });
    ('.total').text(sum);
}
 //--------for quantity increment or decrement-------

 let incrementQty;
 let decrementQty;
 const plusBtn = document.querySelector("#plus");
 const minusBtn = document.querySelector("#minus");
 const qty = document .querySelector("#qty").value;
 incrementQty = plusBtn.onclick(function () {
    const $n = qty;
    $n.val(Number($n.val()) + 1);
    update_amounts();
});

 decrementQty = minusBtn.onclick(function () {
    const $n = qty;
    const QtyVal = Number($n.val());
    if (QtyVal > 0) {
        $n.val(QtyVal - 1);
    }
    update_amounts();
});


/*
let tot = document.getElementById('price');
function increment(){
    const value = parseInt(document.getElementById('number').value);
    tot = (65000.00 * 2);



}

*/