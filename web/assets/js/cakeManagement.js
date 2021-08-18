const cakeForm = document.querySelector("#cakeForm");

cakeForm.addEventListener("submit", e =>{
    const cakeName = document.querySelector("#nameInput").value;
    const price = document.querySelector("#priceInput").value;
    const weight = document.querySelector("#weightInput").value;
    const category = document.querySelector("#category").value;
    const description = document.querySelector("#description").value;
    const image = document.querySelector("#image").value;

    if (cakeName.trim() === ""){
        e.preventDefault();
        document.querySelector("#nameError").style.visibility="visible";
        document.querySelector("#nameInput").style.borderColor = "red"
    }else{
        document.querySelector("#nameError").style.visibility="hidden";
        document.querySelector("#nameInput").style.borderColor = "black";
    }

    if (isNaN(price)){
        e.preventDefault();
        document.querySelector("#priceError").style.visibility="visible";
        document.querySelector("#priceInput").style.borderColor = "red"
    }else{
        document.querySelector("#priceError").style.visibility="hidden";
        document.querySelector("#priceInput").style.borderColor = "black";
    }

    if (isNaN(weight)){
        e.preventDefault();
        document.querySelector("#weightError").style.visibility="visible";
        document.querySelector("#weightInput").style.borderColor = "red"
    }else{
        document.querySelector("#weightError").style.visibility="hidden";
        document.querySelector("#weightInput").style.borderColor = "black";
    }

    if (category.trim() === ""){
        e.preventDefault();
        document.querySelector("#categoryError").style.visibility="visible";
        document.querySelector("#category").style.borderColor = "red"
    }else{
        document.querySelector("#categoryError").style.visibility="hidden";
        document.querySelector("#category").style.borderColor = "black";
    }

    if (description.trim()===""){
        e.preventDefault();
        document.querySelector("#descriptionError").style.visibility="visible";
        document.querySelector("#description").style.borderColor = "red"
    }else{
        document.querySelector("#descriptionError").style.visibility="hidden";
        document.querySelector("#description").style.borderColor = "black";
    }

    if (!image){

    }

})