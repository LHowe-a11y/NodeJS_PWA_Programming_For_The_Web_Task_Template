// const sqlite3 = require("sqlite3").verbose();
// const db = new sqlite3.Database(".database/data_source.db");

let number = Number(1)

let act = true;
let nsw = true;
let vic = true;
let tas = true;
let qld = true;
let sa = true;
let nt = true;
let wa = true;

let earliestDateBar = document.getElementById("earliestDate");
let earlyDateWarningShown = false;

/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function jurisdictionDrop() {
    document.getElementById("jurisdictionDropdown").classList.toggle("show");
}

function sortDrop() {
    document.getElementById("sortDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
// window.onclick = function(event) {
//     if (!event.target.matches('.dropbtn')) {
//         var dropdowns = document.getElementsByClassName("dropdown-content");
//         var i;
//         for (i = 0; i < dropdowns.length; i++) {
//             var openDropdown = dropdowns[i];
//             if (openDropdown.classList.contains('show')) {
//                 openDropdown.classList.remove('show');
//             }
//         }
//     }
// } 

function actFilter() {
    if (act) {
        act = false;
    } else if (!act) {
        act = true;
    }
    document.getElementById("actButton").classList.toggle("toggledon");
}

function nswFilter() {
    if (nsw) {
        nsw = false;
    } else if (!nsw) {
        nsw = true;
    }
    document.getElementById("nswButton").classList.toggle("toggledon");
}

function vicFilter() {
    if (vic) {
        vic = false;
    } else if (!vic) {
        vic = true;
    }
    document.getElementById("vicButton").classList.toggle("toggledon");
}

function tasFilter() {
    if (tas) {
        tas = false;
    } else if (!tas) {
        tas = true;
    }
    document.getElementById("tasButton").classList.toggle("toggledon");
}

function qldFilter() {
    if (qld) {
        qld = false;
    } else if (!qld) {
        qld = true;
    }
    document.getElementById("qldButton").classList.toggle("toggledon");
}

function saFilter() {
    if (sa) {
        sa = false;
    } else if (!sa) {
        sa = true;
    }
    document.getElementById("saButton").classList.toggle("toggledon");
}

function ntFilter() {
    if (nt) {
        nt = false;
    } else if (!nt) {
        nt = true;
    }
    document.getElementById("ntButton").classList.toggle("toggledon");
}

function waFilter() {
    if (wa) {
        wa = false;
    } else if (!wa) {
        wa = true;
    }
    document.getElementById("waButton").classList.toggle("toggledon");
}

function earlyDateBar() {
    let earlyDateInput = earliestDateBar.value;
    // document.getElementById("invalidWarningCapsule").classList.toggle("show");
    console.log(typeof Number(earlyDateInput))
    let earlyDateNumber = Number(earlyDateInput)
    // console.log(typeof earlyDateNumber);
    if (earlyDateWarningShown == false) {
        // document.getElementById("invalidWarningCapsule").classList.toggle("show");
        if (earlyDateNumber < 10000000 || earlyDateNumber > 100000000) {
            earlyDateWarningShown = true;
            document.getElementById("invalidWarningCapsule").classList.toggle("show");
        } else if (earlyDateInput.length != 8) {
            earlyDateWarningShown = true;
            document.getElementById("invalidWarningCapsule").classList.toggle("show");
        }
    } else if (earlyDateWarningShown) {
        if (earlyDateNumber > 10000000 && earlyDateNumber < 100000000 && earlyDateInput.length == 8) {
            earlyDateWarningShown = false;
            document.getElementById("invalidWarningCapsule").classList.toggle("show");
        }
    }
}