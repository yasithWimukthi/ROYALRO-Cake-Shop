const decorationForm = document.querySelector("#decorationForm");
const updateDecorationForm = document.querySelector("#updateDecorationForm");
const button = document.querySelector('#su-bu');
const upbu = document.querySelector('#up-bu');

decorationForm.addEventListener("submit", e =>{
    const decorationName = document.querySelector("#nameInput").value;
    const price = document.querySelector("#priceInput").value;
    const category = document.querySelector("#categoryInput").value;
    const description = document.querySelector("#description").value;
    const image = document.querySelector("#image").value;

    if (decorationName.trim().length === 0){
        e.preventDefault();
        document.querySelector("#nameError").style.visibility="visible";
        document.querySelector("#nameInput").style.borderColor = "red"
    }else{
        document.querySelector("#nameError").style.visibility="hidden";
        document.querySelector("#nameInput").style.borderColor = "black";
    }

    if (isNaN(price) || price.trim().length===0){
        e.preventDefault();
        document.querySelector("#priceError").style.visibility="visible";
        document.querySelector("#priceInput").style.borderColor = "red"
    }else{
        document.querySelector("#priceError").style.visibility="hidden";
        document.querySelector("#priceInput").style.borderColor = "black";
    }

    if (category.trim().length === 0){
        e.preventDefault();
        document.querySelector("#categoryError").style.visibility="visible";
        document.querySelector("#categoryInput").style.borderColor = "red"
    }else{
        document.querySelector("#categoryError").style.visibility="hidden";
        document.querySelector("#categoryInput").style.borderColor = "black";
    }

    if (description.trim().length === 0){
        e.preventDefault();
        document.querySelector("#descriptionError").style.visibility="visible";
        document.querySelector("#description").style.borderColor = "red"
    }else{
        document.querySelector("#descriptionError").style.visibility="hidden";
        document.querySelector("#description").style.borderColor = "black";
    }

    if (!image){
        e.preventDefault();
        document.querySelector("#imageError").style.visibility="visible";
    }else{
        document.querySelector("#imageError").style.visibility="hidden";
    }
})

updateDecorationForm.addEventListener("submit", e =>{
    const decorationName = document.querySelector("#update-name-input").value;
    const price = document.querySelector("#update-price-input").value;
    const category = document.querySelector("#update-category-input").value;
    const description = document.querySelector("#update-description").value;
    const image = document.querySelector("#image").value;

    if (decorationName.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-name-error").style.visibility="visible";
        document.querySelector("#update-name-input").style.borderColor = "red"
    }else{
        document.querySelector("#update-name-error").style.visibility="hidden";
        document.querySelector("#update-name-input").style.borderColor = "black";
    }

    if (isNaN(price) || price.trim().length===0){
        e.preventDefault();
        document.querySelector("#update-price-error").style.visibility="visible";
        document.querySelector("#update-price-input").style.borderColor = "red"
    }else{
        document.querySelector("#update-price-error").style.visibility="hidden";
        document.querySelector("#update-price-input").style.borderColor = "black";
    }

    if (category.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-category-error").style.visibility="visible";
        document.querySelector("#update-category-input").style.borderColor = "red"
    }else{
        document.querySelector("#update-category-error").style.visibility="hidden";
        document.querySelector("#update-category-input").style.borderColor = "black";
    }

    if (description.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-descriptionError").style.visibility="visible";
        document.querySelector("#update-description").style.borderColor = "red"
    }else{
        document.querySelector("#update-descriptionError").style.visibility="hidden";
        document.querySelector("#update-description").style.borderColor = "black";
    }

})

let updateDecorationModal = document.getElementById('updateModal')
updateDecorationModal.addEventListener('show.bs.modal', function (event) {
    let button = event.relatedTarget
    let name = button.getAttribute('data-bs-name')
    let description = button.getAttribute('data-bs-description')
    let price = button.getAttribute('data-bs-price')
    let category = button.getAttribute('data-bs-category')
    let id = button.getAttribute('data-bs-id')
    let image = button.getAttribute('data-bs-image')

    updateDecorationModal.querySelector('#update-name-input').value = name;
    updateDecorationModal.querySelector('#update-price-input').value = price;
    updateDecorationModal.querySelector('#update-category-input').value = category;
    updateDecorationModal.querySelector('#update-description').value = description;
    updateDecorationModal.querySelector('#idx').value = id;
    updateDecorationModal.querySelector('#updateImage').value = image;
})

let deleteDecorationModal = document.getElementById('deleteDecorationModal')
deleteDecorationModal.addEventListener('show.bs.modal', function (event) {
    let button = event.relatedTarget
    let id = button.getAttribute('data-bs-id')
    let name = button.getAttribute('data-bs-name')

    deleteDecorationModal.querySelector('#deleteDecorationId').value = id;
    deleteDecorationModal.querySelector('#deleteName').innerHTML = name;
})
