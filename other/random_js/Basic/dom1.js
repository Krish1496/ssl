// let heading = document.getElementById("heading");
// console.log(typeof heading.innerHTML, " : ",heading.innerHTML);
// console.log(typeof heading);

// let paragraphs = document.getElementsByClassName("paragraph");
// console.log(typeof paragraphs[3].innerHTML, " : ", paragraphs[3].innerHTML);
// console.log(paragraphs[3]);

// let allPara = document.getElementsByTagName('p');
// console.log(typeof allPara[0].innerHTML)
// console.log(allPara.length);

// document.getElementById("heading").innerHTML = "<i><u>Earlier</u></i> it was \"Hello World\" ";
// document.getElementById("heading").textContent = "<i>Earlier</i> it was \"Hello World\" ";

// document.getElementsByClassName("paragraph")[0].style.color = "blue";

// document.getElementById("para").style.fontSize = "20px";
// document.getElementById("para").style.backgroundColor = "yellow";

// let newElement = document.createElement('p');
// newElement.innerHTML = "This paragraph is created by JavaScript";
// document.body.appendChild(newElement)

// let parent = document.getElementById("heading");
// let newText = document.createElement("span");
// newText.innerHTML = " - Updated!";
// parent.appendChild(newText);
// document.getElementById("para3").remove();

document.getElementById("heading").addEventListener("click", () => {
    alert("Why you clicked the heading ?");
})

function yellow() {
    document.body.style.backgroundColor = 'yellow';
}

function white() {
    document.body.style.backgroundColor = 'white';
}