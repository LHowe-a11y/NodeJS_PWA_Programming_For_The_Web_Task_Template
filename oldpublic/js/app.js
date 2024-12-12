const act = "public/images/act_map.png"
const nsw = "public/images/nsw_map.png"
const vic = "public/images/vic_map.png"
const tas = "public/images/tas_map.png"
const qld = "public/images/qld_map.png"
const sa = "public/images/sa_map.png"
const nt = "public/images/nt_map.png"
const wa = "public/images/wa_map.png"
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
        var JurisdictionImage
        if (Jurisdiction == "act") {
            JurisdictionImage = "images/act_map.png";
        }   else if (Jurisdiction == "nsw") {
            JurisdictionImage = "images/nsw_map.png";
        }   else if (Jurisdiction == "vic") {
            JurisdictionImage = "images/vic_map.png";
        }   else if (Jurisdiction == "tas") {
            JurisdictionImage = "images/tas_map.png";
        }   else if (Jurisdiction == "qld") {
            JurisdictionImage = "images/qld_map.png";
        }   else if (Jurisdiction == "sa") {
            JurisdictionImage = "images/sa_map.png";
        }   else if (Jurisdiction == "nt") {
            JurisdictionImage = "images/nt_map.png";
        }   else if (Jurisdiction == "wa") {
            JurisdictionImage = "images/wa_map.png";
        }
        result += `
            <div class="card">
            <img class="card-image" src=${JurisdictionImage} alt="Product image for the ${Date} VSCode extension."/>
            <h1 class="card-name">${HolidayName}</h1>
            <p class="card-about">${Information}</p>
            <a class="card-link" href="${MoreInformation}"><button class="btn">Read More</button></a>
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