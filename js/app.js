let data;
chrome.runtime.onMessage.addListener((request, sender, sendResponse) => {
    if (request.greeting !== undefined) {
        data = request.greeting;
    }
});

document.body.innerHTML = data;
