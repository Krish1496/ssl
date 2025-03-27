let count = 0;
let Button = document.getElementById('addTask');
let textArea = document.getElementById('text');
let textButton = document.getElementById('addText')
let todo = document.getElementById("todo-items")

Button.addEventListener("click", () => {
    textArea.style.display = "inline";
    textButton.style.display = "inline";
    // count++;
    // let text = textArea.value;
    // let str = count + "). " + text + "\n";
    // todo.appendChild(str);
})

textButton.addEventListener("click", () => {
    let text = textArea.value.trim();
    if( text != "" ) {
        count++;
        let taskItem = document.createElement('p');
        taskItem.textContent = count + "). " + text;
        todo.appendChild(taskItem);
        textArea.value = "";
    }
    else {
        alert("Please enter some task !!")
    }
})