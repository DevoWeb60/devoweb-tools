import { fetchData } from "./inc/functions.js";

const API_URL = "http://devoweb-tools.test/api";

function App(data) {
    const container = document.querySelector(".container");
    const categoryContainer = document.querySelector(".category-container");
    const toolsContainer = document.querySelector(".tools-container");
    const backButton = document.querySelector("#back");

    data.categories.forEach((category) => {
        const div = document.createElement("div");
        div.classList.add("category");
        div.innerHTML = `<h2><img src="${category.icon}">${category.name}</h2>`;
        data.subcategories.forEach((subcategory) => {
            if (subcategory.parent_category == category.id) {
                div.innerHTML += `<h3 class="subcategory sub-link" data-cat="${category.id}" data-subid="${subcategory.id}">${subcategory.name} <i class="fas fa-long-arrow-alt-right"></i></h3>`;
            }
        });
        data.tools.forEach((tool) => {
            if (
                tool.category_id == category.id &&
                tool.subcategory_id == null
            ) {
                div.innerHTML += `<a href="${tool.link}" class="sub-link" target="_blank">
                <h3>${tool.name}</h3>
                <p>${tool.description}</p>
                </a>`;
            }
        });
        categoryContainer.appendChild(div);
    });

    const subCategories = document.querySelectorAll(".subcategory");
    subCategories.forEach((subcategory) => {
        subcategory.addEventListener("click", () => {
            const categoryId = subcategory.dataset.cat;
            const subcategoryId = subcategory.dataset.subid;

            const div = document.createElement("div");
            div.classList.add("tools-lists");
            data.categories.forEach((category) => {
                if (category.id == categoryId) {
                    data.subcategories.forEach((subcategory) => {
                        if (subcategory.id == subcategoryId) {
                            data.tools.forEach((tool) => {
                                if (tool.subcategory_id == subcategoryId) {
                                    div.innerHTML += `
                                    <a href="${tool.link}" class="sub-link" target="_blank">
                                        <h3><img src="${tool.favicon}">${tool.name}</h3>
                                        <p>${tool.description}</p>
                                    </a>`;
                                }
                            });
                        }
                    });
                }
            });
            toolsContainer.appendChild(div);

            container.classList.add("active");
        });
    });

    backButton.addEventListener("click", () => {
        container.classList.remove("active");
        const toolsList = toolsContainer.querySelector(".tools-lists");
        toolsList.remove();
    });
}

fetchData(API_URL, App);
