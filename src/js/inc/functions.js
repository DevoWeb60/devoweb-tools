export function fetchData(url, callback) {
    fetch(url)
        .then((res) => {
            return res.json();
        })
        .then((res) => callback(res));
}
