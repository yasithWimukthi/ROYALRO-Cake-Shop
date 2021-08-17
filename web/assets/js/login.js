const loginForm = document.querySelector("#login-form");

loginForm.addEventListener("submit", e=>{
    const email = document.querySelector("#email-input").value;
    const password = document.querySelector("#password-input").value;

    if (email.trim().length === 0){
        e.preventDefault();
        document.querySelector("#email-error").style.visibility="visible";
        document.querySelector("#email-input").style.borderColor = "red";
    }else{
        document.querySelector("#email-error").style.visibility="hidden";
        document.querySelector("#email-input").style.borderColor = "black";
    }

    if (password.trim().length === 0) {
        e.preventDefault();
        document.querySelector("#password-error").style.visibility="visible";
        document.querySelector("#password-input").style.borderColor = "red";
    }else{
        document.querySelector("#password-error").style.visibility="hidden";
        document.querySelector("#password-input").style.borderColor = "black";
    }
})