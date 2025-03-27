document.getElementById("b2").style.display = "none";

function changeBGtoPink() {
    document.body.style.backgroundColor = "pink";
    document.getElementById("b1").style.display = "none";
    document.getElementById("b2").style.display = "block";

}

function changeBGtoWhite() {
    document.body.style.backgroundColor = "white";
    document.getElementById("b2").style.display = "none";
    document.getElementById("b1").style.display = "block"
}