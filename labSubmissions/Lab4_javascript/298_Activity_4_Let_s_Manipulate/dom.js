function makeChanges() {
    // document.getElementsByTagName("img")[0].src = "timepass.png"
    let n = document.getElementsByTagName("img");
    for(let i=0; i<n.length; i++) {
        n[i].src = "timepass.png";
    }

    let m = document.getElementsByTagName('h1');
    for(let j=0; j<m.length; j++) {
        m[j].remove();
    }

    let p = document.getElementsByTagName('p');
    for(let k=0; k<p.length; k++) {
        p[k].innerHTML = 'Enough of JavaScript, lets stop.';
    }

    let a = document.getElementsByTagName('h2');
    for(let b=0; b<a.length; b++) {
        a[b].innerText = a[b].innerText.toUpperCase();
    }

    document.getElementById('div1').innerHTML = "<h3></h3>";
}