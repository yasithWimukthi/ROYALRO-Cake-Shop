$(function() {
    $('[data-decrease]').click(decrease);
    $('[data-increase]').click(increase);
    $('[data-value]').change(valueChange);
});



function decrease() {
    let value = $(this).parent().find('[data-value]').val();

    document.querySelector("#decQty").value=value;
    document.querySelector("#decForm").submit();


}



function increase() {
   let value = $(this).parent().find('[data-value]').val();

    document.querySelector("#incQty").value=value;
    document.querySelector("#incForm").submit();

}



function valueChange() {
    var value = $(this).val();
    if(value == undefined || isNaN(value) == true || value <= 0) {
        $(this).val(1);
    } else if(value >= 101) {
        $(this).val(100);
    }


}


function setData()
{


}
function sendForm()
{document.querySelector("#deleteItemForm").submit();

}
































