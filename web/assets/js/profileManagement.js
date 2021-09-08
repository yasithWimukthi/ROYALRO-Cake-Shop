const cakeForm = document.querySelector("#cakeForm");
const updateCakeForm = document.querySelector("#updateCakeForm");
const button = document.querySelector('#su-bu');
const upbu = document.querySelector('#up-bu');



updateCakeForm.addEventListener("submit", e =>{
    const name = document.querySelector("#update-name-input").value;
    const email = document.querySelector("#update-price-input").value;
    const mobile = document.querySelector("#update-weight-input").value;
    const gender = document.querySelector("#update-category-input").value;
    const birthDate = document.querySelector("#update-description").value;
    const address = document.querySelector("#image").value;
    const address2 = document.querySelector("#image").value;

    if (name.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-name-error").style.visibility="visible";
        document.querySelector("#update-name-input").style.borderColor = "red"
    }else{
        document.querySelector("#update-name-error").style.visibility="hidden";
        document.querySelector("#update-name-input").style.borderColor = "black";
    }

    if (email.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-category-error").style.visibility="visible";
        document.querySelector("#update-category-input").style.borderColor = "red"
    }else{
        document.querySelector("#update-category-error").style.visibility="hidden";
        document.querySelector("#update-category-input").style.borderColor = "black";
    }

    if (isNaN(mobile) || mobile.trim().length===0){
        e.preventDefault();
        document.querySelector("#update-price-error").style.visibility="visible";
        document.querySelector("#update-price-input").style.borderColor = "red"
    }else{
        document.querySelector("#update-price-error").style.visibility="hidden";
        document.querySelector("#update-price-input").style.borderColor = "black";
    }


    if (gender.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-descriptionError").style.visibility="visible";
        document.querySelector("#update-description").style.borderColor = "red"
    }else{
        document.querySelector("#update-descriptionError").style.visibility="hidden";
        document.querySelector("#update-description").style.borderColor = "black";
    }


    if (birthDate.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-descriptionError").style.visibility="visible";
        document.querySelector("#update-description").style.borderColor = "red"
    }else{
        document.querySelector("#update-descriptionError").style.visibility="hidden";
        document.querySelector("#update-description").style.borderColor = "black";
    }


    if (address.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-descriptionError").style.visibility="visible";
        document.querySelector("#update-description").style.borderColor = "red"
    }else{
        document.querySelector("#update-descriptionError").style.visibility="hidden";
        document.querySelector("#update-description").style.borderColor = "black";
    }

    if (address2.trim().length === 0){
        e.preventDefault();
        document.querySelector("#update-descriptionError").style.visibility="visible";
        document.querySelector("#update-description").style.borderColor = "red"
    }else{
        document.querySelector("#update-descriptionError").style.visibility="hidden";
        document.querySelector("#update-description").style.borderColor = "black";
    }

})
