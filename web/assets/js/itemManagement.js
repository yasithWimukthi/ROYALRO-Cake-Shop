
const InsertButton = document.querySelector("#saveBtn");
const UpdateButton = document.querySelector("#UpdateSaveBtn");

InsertButton.addEventListener("click", e=>{
    const itemName = document.querySelector("#ItemNameInput").value;
    const itemPrice = document.querySelector("#ItemPriceInput").value;
    const itemCategory = document.querySelector("#ItemCategoryInput").value;
    const itemQty = document.querySelector("#Qty").value;
    const itemImage = document.querySelector("#ItemImage").value;

    if (itemName.trim().length === 0){
        e.preventDefault();
        document.querySelector("#ItemNameError").style.visibility="visible";
        document.querySelector("#ItemNameInput").style.borderColor = "red";
    }else{
        document.querySelector("#ItemNameError").style.visibility="hidden";
        document.querySelector("#ItemNameInput").style.borderColor = "black";
    }

    if (isNaN(itemPrice) ||itemPrice.trim().length === 0){
        e.preventDefault();
        document.querySelector("#ItemPriceError").style.visibility="visible";
        document.querySelector("#ItemPriceInput").style.borderColor = "red";
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
        document.querySelector("#Qty").style.borderColor = "red";
    }else{
        document.querySelector("#QtyError").style.visibility="hidden";
        document.querySelector("#Qty").style.borderColor = "black";
    }


    if (!itemImage){
        e.preventDefault();
        document.querySelector("#ItemImageError").style.visibility="visible";
        document.querySelector("#ItemImage").style.borderColor = "red";
    }else{
        document.querySelector("#ItemImageError").style.visibility="hidden";
        document.querySelector("#ItemImage").style.borderColor = "black";
    }
})

UpdateButton.addEventListener("click", e=>{
    const itemName = document.querySelector("#UpdateItemName").value;
    const itemPrice = document.querySelector("#updateItemPrice").value;
    const itemCategory = document.querySelector("#UpdateItemCategory").value;
    const itemQty = document.querySelector("#UpdateQty").value;
    const itemImage = document.querySelector("#UpadatefileUpload").value;

    if (itemName.trim().length === 0){
        e.preventDefault();
        document.querySelector("#UpdateItemNameError").style.visibility="visible";
        document.querySelector("#UpdateItemName").style.borderColor = "red";
    }else{
        document.querySelector("#UpdateItemNameError").style.visibility="hidden";
        document.querySelector("#UpdateItemName").style.borderColor = "black";
    }

    if (isNaN(itemPrice) ||itemPrice.trim().length === 0){
        e.preventDefault();
        document.querySelector("#updateItemPriceError").style.visibility="visible";
        document.querySelector("#updateItemPrice").style.borderColor = "red";
    }else{
        document.querySelector("#updateItemPriceError").style.visibility="hidden";
        document.querySelector("#updateItemPrice").style.borderColor = "black";
    }

    if (itemCategory.trim().length === 0){
        e.preventDefault();
        document.querySelector("#UpdateItemCategoryError").style.visibility="visible";
        document.querySelector("#UpdateItemCategory").style.borderColor = "red";
    }else{
        document.querySelector("#UpdateItemCategoryError").style.visibility="hidden";
        document.querySelector("#UpdateItemCategory").style.borderColor = "black";
    }

    if (isNaN(itemQty) || itemQty.trim().length === 0 || itemQty <= 0){
        e.preventDefault();
        document.querySelector("#UpdateQtyError").style.visibility="visible";
        document.querySelector("#UpdateQty").style.borderColor = "red";
    }else{
        document.querySelector("#UpdateQtyError").style.visibility="hidden";
        document.querySelector("#UpdateQty").style.borderColor = "black";
    }


    if (!itemImage){
        e.preventDefault();
        document.querySelector("#UpadatefileUploadError").style.visibility="visible";
        document.querySelector("#UpadatefileUpload").style.borderColor = "red";
    }else{
        document.querySelector("#UpadatefileUploadError").style.visibility="hidden";
        document.querySelector("#UpadatefileUpload").style.borderColor = "black";
    }
})

let updateItemModal = document.getElementById('updateItemModal')
updateItemModal.addEventListener('show.bs.modal', function (event) {
    let button = event.relatedTarget;
    let name = button.getAttribute('data-bs-name');
    let price = button.getAttribute('data-bs-price');
    let category = button.getAttribute('data-bs-category');
    let Qty= button.getAttribute('data-bs-qty');
    let Brand= button.getAttribute('data-bs-brand');
    let CompanyCode= button.getAttribute('data-bs-companyCode');
    let description = button.getAttribute('data-bs-description');
    let id = button.getAttribute('data-bs-ProductID');
    let image = button.getAttribute('data-bs-image');

    updateItemModal.querySelector('#UpdateItemName').value = name;
    updateItemModal.querySelector('#updateItemPrice').value = price;
    updateItemModal.querySelector('#UpdateItemCategory').value = category;
    updateItemModal.querySelector('#UpdateQty').value = Qty;
    updateItemModal.querySelector('#UpdateBrand').value = Brand;
    updateItemModal.querySelector('#UpdateCompanyCode').value = CompanyCode;
    updateItemModal.querySelector('#UpdateDescription').value = description;
    updateItemModal.querySelector('#ProductID').value = id;
    updateItemModal.querySelector('#UpdateImage').value = image;


})

let deleteItemModal = document.getElementById('deleteItem')
deleteItemModal.addEventListener('show.bs.modal', function (event) {
    let button = event.relatedTarget
    let id = button.getAttribute('data-bs-ProductID')
    let name = button.getAttribute('data-bs-name')

    deleteItemModal.querySelector('#deletePID').value = id;
    deleteItemModal.querySelector('#deleteItemName').innerHTML = name;
})