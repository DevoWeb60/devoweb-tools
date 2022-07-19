import { fetchData } from "./inc/functions.js";

const API_URL = "http://devoweb-tools.test/api";

function App(data) {
    const container = document.querySelector(".container");

    data.categories.forEach((category) => {
        const div = document.createElement("div");
        div.classList.add("category");
        div.innerHTML = `<h2><img src="${category.icon}">${category.name}</h2>`;
        data.subcategories.forEach((subcategory) => {
            if (subcategory.parent_category == category.id) {
                div.innerHTML += `<h3 class="subcategory sub-link" id="sub-${subcategory.id}">${subcategory.name} <i class="fas fa-long-arrow-alt-right"></i></h3>`;
            }
        });
        data.tools.forEach((tool) => {
            if (
                tool.category_id == category.id &&
                tool.subcategory_id == null
            ) {
                div.innerHTML += `<a href="${tool.link}" class="sub-link" target="_blank">${tool.name}</a>`;
            }
        });
        container.appendChild(div);
    });
}

fetchData(API_URL, App);
