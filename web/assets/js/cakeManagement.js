const cakeForm = document.querySelector("#cakeForm");
const updateCakeForm = document.querySelector("#updateCakeForm");
const button = document.querySelector('#su-bu');
const upbu = document.querySelector('#up-bu');

cakeForm.addEventListener("submit", e =>{
    const cakeName = document.querySelector("#nameInput").value;
    const price = document.querySelector("#priceInput").value;
    const weight = document.querySelector("#weightInput").value;
    const category = document.querySelector("#categoryInput").value;
    const description = document.querySelector("#description").value;
    const image = document.querySelector("#image").value;

    if (cakeName.trim().length === 0){
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

    if (isNaN(weight)|| weight.trim().length===0){
        e.preventDefault();
        document.querySelector("#weightError").style.visibility="visible";
        document.querySelector("#weightInput").style.borderColor = "red"
    }else{
        document.querySelector("#weightError").style.visibility="hidden";
        document.querySelector("#weightInput").style.borderColor = "black";
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

updateCakeForm.addEventListener("submit", e =>{
    const cakeName = document.querySelector("#update-name-input").value;
    const price = document.querySelector("#update-price-input").value;
    const weight = document.querySelector("#update-weight-input").value;
    const category = document.querySelector("#update-category-input").value;
    const description = document.querySelector("#update-description").value;
    const image = document.querySelector("#image").value;

    if (cakeName.trim().length === 0){
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

    if (isNaN(weight)|| weight.trim().length===0){
        e.preventDefault();
        document.querySelector("#weightUpdateError").style.visibility="visible";
        document.querySelector("#update-weight-input").style.borderColor = "red"
    }else{
        document.querySelector("#weightUpdateError").style.visibility="hidden";
        document.querySelector("#update-weight-input").style.borderColor = "black";
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




var updateCakeModal = document.getElementById('updateModal')
updateCakeModal.addEventListener('show.bs.modal', function (event) {
    var button = event.relatedTarget
    var name = button.getAttribute('data-bs-name')
    var weight = button.getAttribute('data-bs-weight')
    var description = button.getAttribute('data-bs-description')
    var price = button.getAttribute('data-bs-price')
    var category = button.getAttribute('data-bs-category')


    updateCakeModal.querySelector('#update-name-input').value = name;
    updateCakeModal.querySelector('#update-weight-input').value = weight;
    updateCakeModal.querySelector('#update-price-input').value = price;
    updateCakeModal.querySelector('#update-category-input').value = category;
    updateCakeModal.querySelector('#update-description').value = description;
})