const itemForm = document.querySelector("#itemForm");
const button = document.querySelector('#saveBtn');

button.addEventListener("click", e=>{
    const itemName = document.querySelector("#ItemNameInput").value;
    const itemPrice = document.querySelector("#ItemPriceInput").value;
    const itemCategory = document.querySelector("#ItemCategoryInput").value;
    const itemQty = document.querySelector("#Qty").value;
    const itemImage = document.querySelector("#ItemImage").value;

    if (itemName.trim().length === 0){
        e.preventDefault();
        document.querySelector("#ItemNameError").style.visibility="visible";
        document.querySelector("#ItemNameInput").style.borderColor = "red"
    }else{
        document.querySelector("#ItemNameError").style.visibility="hidden";
        document.querySelector("#ItemNameInput").style.borderColor = "black";
    }

    if (isNaN(itemPrice) ||itemPrice.trim().length === 0){
        e.preventDefault();
        document.querySelector("#ItemPriceError").style.visibility="visible";
        document.querySelector("#ItemPriceInput").style.borderColor = "red"
    }else{
        document.querySelector("#ItemPriceError").style.visibility="hidden";
        document.querySelector("#ItemPriceInput").style.borderColor = "black";
    }

    if (itemCategory.trim().length === 0){
        e.preventDefault();
        document.querySelector("#ItemCategoryError").style.visibility="visible";
        document.querySelector("#ItemCategoryInput").style.borderColor = "red"
    }else{
        document.querySelector("#ItemCategoryError").style.visibility="hidden";
        document.querySelector("#ItemCategoryInput").style.borderColor = "black";
    }

    if (isNaN(itemQty) || itemQty.trim().length === 0 || itemQty <= 0){
        e.preventDefault();
        document.querySelector("#QtyError").style.visibility="visible";
        document.querySelector("#Qty").style.borderColor = "red"
    }else{
        document.querySelector("#QtyError").style.visibility="hidden";
        document.querySelector("#Qty").style.borderColor = "black";
    }


    if (!itemImage){
        e.preventDefault();
        document.querySelector("#ItemImageError").style.visibility="visible";
        document.querySelector("#ItemImage").style.borderColor = "red"
    }else{
        document.querySelector("#ItemImageError").style.visibility="hidden";
        document.querySelector("#ItemImage").style.borderColor = "black"
    }
})