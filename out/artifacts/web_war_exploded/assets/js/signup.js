const signUpForm = document.querySelector('#signUpForm');
const passwordInput = document.querySelector('#password-input');

let isLengthCorrect = false;
let isIncludeUpperCase = false;
let isIncludeSpecialChar = false;

const tldEmailRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
const emailRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
const upperCaseRegex = /(.*[A-Z].*)/;
const specialCharRegex = /(.*\W.*)/;


signUpForm.addEventListener('submit', e =>{
    const name = document.querySelector('#name-input').value;
    const email = document.querySelector('#email-input').value;
    const mobile = document.querySelector('#mobile-input').value;
    const password = document.querySelector('#password-input').value;
    const confirmPassword = document.querySelector('#password-confirm-input').value;

    if(name.trim().length == 0){
        e.preventDefault();
        document.querySelector("#name-error").style.visibility="visible";
        document.querySelector("#name-input").style.borderColor = "red";
    }else{
        document.querySelector("#name-error").style.visibility="hidden";
        document.querySelector("#name-input").style.borderColor = "black";
    }

    if (!tldEmailRegex.test(email.trim()) || !emailRegex.test(email.trim())){
        e.preventDefault();
        document.querySelector("#email-error").style.visibility="visible";
        document.querySelector("#email-input").style.borderColor = "red";
    }else {
        document.querySelector("#email-error").style.visibility="hidden";
        document.querySelector("#email-input").style.borderColor = "black";
    }

    if(mobile.trim().length !== 10){
        document.querySelector("#mobile-error").style.visibility="visible";
        document.querySelector("#mobile-input").style.borderColor = "red";
        e.preventDefault();
    }else{
        document.querySelector("#mobile-error").style.visibility="hidden";
        document.querySelector("#mobile-input").style.borderColor = "black";
    }

    if(password.trim().length == 0){
        e.preventDefault();
        document.querySelector("#password-error").style.visibility="visible";
        document.querySelector("#password-input").style.borderColor = "red";
    }else{
        document.querySelector("#password-error").style.visibility="hidden";
        document.querySelector("#password-input").style.borderColor = "black";
    }

    if (confirmPassword !== password){
        e.preventDefault();
        document.querySelector("#password-confirm-error").style.visibility="visible";
        document.querySelector("#password-confirm-input").style.borderColor = "red";
    }else{
        document.querySelector("#password-confirm-error").style.visibility="hidden";
        document.querySelector("#password-confirm-input").style.borderColor = "black";
    }

    if (isIncludeSpecialChar && isIncludeUpperCase && isLengthCorrect){

    }else{
        e.preventDefault();
    }
})

// passwordInput.addEventListener("", e=>{
//     if (document.querySelector('#password-input').value.trim().length >= 8){
//         document.querySelector('#length-check').style.color = "green";
//     }else{
//         document.querySelector('#length-check').style.color = "red";
//     }
// })

const onPasswordChange = e =>{
    if (document.querySelector('#password-input').value.trim().length >= 8){
        document.querySelector('#length-check').style.color = "green";
        isLengthCorrect = true;
    }else{
        document.querySelector('#length-check').style.color = "red";
    }

    if(upperCaseRegex.test(document.querySelector('#password-input').value.trim())){
        document.querySelector('#uppercase-check').style.color = "green";
        isIncludeUpperCase = true;
    }else {
        document.querySelector('#uppercase-check').style.color = "red";
    }

    if(specialCharRegex.test(document.querySelector('#password-input').value.trim())){
        document.querySelector('#special-char-check').style.color = "green";
        isIncludeSpecialChar = true;
    }else {
        document.querySelector('#special-char-check').style.color = "red";
    }
}