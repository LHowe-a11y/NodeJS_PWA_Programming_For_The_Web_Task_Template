let result = "";
fetch("./frontEndData.json")
    .then(function (response) {
        return response.json();
    })
    .then(function (data) {
        appendData(data);
    })
    .catch(function (err) {
        console.log("error: " + err);
    });
function appendData(data) {
    data.forEach(({ Date, HolidayName, Information, MoreInformation, Jurisdiction } = rows) => {
        result += `
            <div class="card">
            <img class="card-image" src="${HolidayName}" alt="Product image for the ${Date} VSCode extension."/>
            <h1 class="card-name">${Date}</h1>
            <p class="card-about">${MoreInformation}</p>
            <a class="card-link" href="${Information}"><button class="btn">Read More</button></a>
            </div>
            `;
    });
    document.querySelector(".container").innerHTML = result;
}

if ("serviceworker" in navigator) {
    window.addEventListener("load", function () {
        navigator.serviceworker
            .register("js/serviceworker.js")
            .then((res) => console.log("service worker registered"))
            .catch((err) => console.log("service worker not registered", err));
    });
}