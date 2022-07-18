const API_URL = "http://devoweb-tools.test/api";

function fetchData(url, callback) {
    fetch(url)
        .then((res) => {
            return res.json();
        })
        .then((res) => callback(res));
}

function App(data) {
    const container = document.querySelector(".container");

    Object.keys(data).forEach((category) => {
        const div = document.createElement("div");
        div.innerHTML += `<h2>${category}</h2>`;
        div.innerHTML += `<ul>`;
        data[category].forEach((element) => {
            div.innerHTML += `<li>
            <h3>
            <span><img src=${element.favicon} alt=""></span> 
            ${element.name}
            </h3>
            </li>`;
        });
        div.innerHTML += `</ul>`;
        container.appendChild(div);
    });
}

fetchData(API_URL, App);
