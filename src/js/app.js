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
        div.className = "category";
        div.innerHTML += `<h2>${category}</h2>`;
        div.innerHTML += `<div class="list ${category}">`;
        data[category].forEach((element) => {
            div.innerHTML += `<div class="item">
                <a href="${element.link}" target="_blank">
                    <h3>
                        <span>
                            <img src=${element.favicon} alt="" />
                        </span> 
                        ${element.name}
                    </h3>
                </a>
            </div>`;
        });
        div.innerHTML += `</div>`;
        container.appendChild(div);
    });
}

fetchData(API_URL, App);
