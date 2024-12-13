const sqlite3 = require("sqlite3").verbose();
const db = new sqlite3.Database(".database/data_source.db");
const express = require("express");
const path = require("path");
const bodyParser = require('body-parser');
const app = express();
app.use(express.static(path.join(__dirname, "public")));

app.set('views', './views')
app.set('view engine', 'ejs');

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

let searchResults = "";

app.get("/", function (req, res) {
    res.sendFile(path.join(__dirname, "public/index.html"));
})
app.get("/views", function (req, res) {
    let search = req.query.search;
    // console.log(search);
    let act = req.query.act;
    let nsw = req.query.nsw;
    let vic = req.query.vic;
    let tas = req.query.tas;
    let qld = req.query.qld;
    let sa = req.query.sa;
    let nt = req.query.nt;
    let wa = req.query.wa;
    let edate = req.query.edate;
    let ldate = req.query.ldate;
    let name = req.query.name;
    let sort = req.query.sort;
    let ascdesc = req.query.ascdesc;

    let select = "SELECT Date, HolidayName, Information, MoreInformation, Jurisdiction FROM holidays";
    let filterquery = "";
    let sortquery = " ORDER BY id ASC;";
    let jurissort = "(";
    if (search == 'true') {
        if (act == 'true') {
            jurissort = jurissort.concat("Jurisdiction = 'act'");
        }
        if (nsw == 'true') {
            if (jurissort != "(") {
                jurissort = jurissort.concat(" or ");
            }
            jurissort = jurissort.concat("Jurisdiction = 'nsw'");
        }
        if (vic == 'true') {
            if (jurissort != "(") {
                jurissort = jurissort.concat(" or ");
            }
            jurissort = jurissort.concat("Jurisdiction = 'vic'");
        }
        if (tas == 'true') {
            if (jurissort != "(") {
                jurissort = jurissort.concat(" or ");
            }
            jurissort = jurissort.concat("Jurisdiction = 'tas'");
        }
        if (qld == 'true') {
            if (jurissort != "(") {
                jurissort = jurissort.concat(" or ");
            }
            jurissort = jurissort.concat("Jurisdiction = 'qld'");
        }
        if (sa == 'true') {
            if (jurissort != "(") {
                jurissort = jurissort.concat(" or ");
            }
            jurissort = jurissort.concat("Jurisdiction = 'sa'");
        }
        if (nt == 'true') {
            if (jurissort != "(") {
                jurissort = jurissort.concat(" or ");
            }
            jurissort = jurissort.concat("Jurisdiction = 'nt'");
        }
        if (wa == 'true') {
            if (jurissort != "(") {
                jurissort = jurissort.concat(" or ");
            }
            jurissort = jurissort.concat("Jurisdiction = 'wa'");
        }
        jurissort = jurissort.concat(")");
        filterquery = " WHERE Date >= "+edate+" and Date <= "+ldate+" and HolidayName LIKE '%"+name+"%' and "+jurissort;
        sortquery = " ORDER BY "+sort+" "+ascdesc+";";
    }
    let dynamicquery = filterquery.concat(sortquery);
    let dbquery = select.concat(dynamicquery);
    db.all(dbquery, function (err, rows) {
        searchResults = "";
        if (rows == "") {
            searchResults = "<p>Your search returned no results</p>"
        }
        rows.forEach(function (row) {
            var JurisdictionImage
            if (row.Jurisdiction == "act") {
                JurisdictionImage = "/images/act_map.png";
            } else if (row.Jurisdiction == "nsw") {
                JurisdictionImage = "/images/nsw_map.png";
            } else if (row.Jurisdiction == "vic") {
                JurisdictionImage = "/images/vic_map.png";
            } else if (row.Jurisdiction == "tas") {
                JurisdictionImage = "/images/tas_map.png";
            } else if (row.Jurisdiction == "qld") {
                JurisdictionImage = "/images/qld_map.png";
            } else if (row.Jurisdiction == "sa") {
                JurisdictionImage = "/images/sa_map.png";
            } else if (row.Jurisdiction == "nt") {
                JurisdictionImage = "/images/nt_map.png";
            } else if (row.Jurisdiction == "wa") {
                JurisdictionImage = "/images/wa_map.png";
            }
            searchResults += (`
                <div class="card">
                <h1 class="card-name">${row.HolidayName}</h1>
                <img class="card-image" src=${JurisdictionImage} alt="Illustration of state/territory ${row.Jurisdiction} on a map"/>
                <p class="card-about">${row.Date}</p>
                <p class="card-about">${row.Information}</p>
                <a class="card-link" href="${row.MoreInformation}"><button class="btn">More Info</button></a>
                </div>
                `);
        });
        res.render('index', { searchResults });
    });
});
app.get("/help", function (req, res) {
    res.sendFile(path.join(__dirname, "public/help.html"));
})
app.listen(5000, () =>
    console.log(
        "Server is running on Port 5000, visit http://localhost:5000/ or http://127.0.0.1:5000 to access your website"
    )
);