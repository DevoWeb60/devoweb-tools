// Ajoute une pastille sur l'icône de l'extension
fetch("http://devoweb-tools.test/api")
    .then((res) => {
        return res.json();
    })
    .then((data) => {
        console.log(data);
    });
