const sqlite3 = require("sqlite3").verbose();
const db = new sqlite3.Database(".database/data_source.db");
// const url = require('url');
// const querystring = require('querystring');
const express = require("express");
const path = require("path");
const app = express();
app.use(express.static(path.join(__dirname, "newpage")));

app.get("/", function (req, res) {
    let search = req.query.search;
    console.log(search);
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
    let myString = "[\n";
    db.all(dbquery, function (err, rows) {
        let myCounter = 0;
        rows.forEach(function (row) {
            // for debugging
            // console.log(row.extID + ": " + row.name + ": " + row.hyperlink + ": " + row.about + ": " + row.image + ": " + row.language);
            myString =
                myString +
                ',\n"Date":"' +
                row.Date +
                '",\n"HolidayName":"' +
                row.HolidayName +
                '",\n"Information":"' +
                row.Information +
                '",\n"MoreInformation":"' +
                row.MoreInformation +
                '",\n"Jurisdiction":"' +
                row.Jurisdiction;
            myCounter++;
            if (myCounter == rows.length) {
                myString = myString + '"\n}\n';
            } else {
                myString = myString + '"\n},\n';
            }
        });

        console.log(myString);
        var fs = require("fs");
        fs.writeFile("newpage/frontEndData.json", myString + "]", function (err) {
            if (err) {
                console.log(err);
            }
        });
    });

    res.sendFile(path.join(__dirname, "newpage/index.html"));
});
app.listen(5000, () =>
    console.log(
        "Server is running on Port 5000, visit http://localhost:5000/ or http://127.0.0.1:5000 to access your website"
    )
);