function validateName() {
    /*Check whether name is entered or not.
    Throw an error if name field is empty.
    Error message will be "Full name is required."*/
    let name = document.getElementById("fullName").value;
    if(name == "") {
        throw("Error: Full name is required.");
    }
}

function validateEmail() {
    /*Check whether email is valid or not, as per the rules stated in problem statement.
    Use regex and test() function to validate the email address.
    Throw an error if email is invalid.
    Error message will be "Invalid Email Address."*/
    let email = document.getElementById("email").value;
    const pattern = /[a-z0-9]*@[a-z]*\.[a-z]{3}/;
    if( !pattern.test(email) ) {
        throw("Error: Invalid Email Address.");
    }
}

function validatePassword() {
    /*Check whether password is made of atleast 8 characters.
    /If not, throw an error.
    Error message will be "Password must be at least 8 characters"*/
    let password = document.getElementById("password").value;
    if( password.length < 8 ) {
        throw("Error: Password must be at least 8 characters.");
    }
}

function ConfirmPassword() {
    /*Check whether the re-entered password is same as the password entered first.
    If not, throw an error.
    Error message will be "Passwords do not match"*/
    let confirPassword = document.getElementById("confirmPassword").value;
    let password = document.getElementById("password").value;
    if( password !== confirPassword || password.length<8 || confirPassword.length<8 ) {
        throw("Error: Passwords do not match.");
    }
}

function validateForm() {
    try {

        /*Check whether all fields are entered or not*/
        //Your code here
        let name = document.getElementById("fullName").value;
        let email = document.getElementById("email").value;
        let password = document.getElementById("password").value;
        let confirPassword = document.getElementById("confirmPassword").value;
        // console.log("Values entered: ")
        // console.log(name, email, password, confirPassword);
        if( (name=="" || name==null) || (email=="" || email==null) || (password==""|| password==null) || (confirPassword=="" || confirPassword==null) ) {
            throw("Error: All fields are required.")
        }

        validateName();
        validateEmail();
        validatePassword();
        ConfirmPassword();

        // Additional validation rules can be added here

        //After checking all the rules, if the program throws no error, it will reach this part of code.
        //Using "innerHTML" and "span" tag, give the message "Registration successful!" in GREEN colour to the div container "feedback" in index.html.
        //Your code here
        let feedback = document.getElementById("feedback");
        feedback.innerHTML = "Registration successful!";
        feedback.style.color = "green";
    } catch (error) {
        //After checking all the rules, if the program throws an error, it will reach this part of code.
        //Using "innerHTML" and "span" tag, give the error message in RED colour to the div container "feedback" in index.html.
        //Your code here
        let feedback = document.getElementById("feedback");
        feedback.innerHTML = error;
        feedback.style.color = "red";
    }
}
