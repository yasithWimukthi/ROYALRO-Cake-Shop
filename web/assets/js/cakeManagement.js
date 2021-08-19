const cakeForm = document.querySelector("#cakeForm");
const updateCakeForm = document.querySelector("#updateCakeForm");
const button = document.querySelector('#su-bu');

button.addEventListener("click", e =>{
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

updateCakeForm.addEventListener("click", e =>{
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