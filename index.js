const sqlite3 = require("sqlite3").verbose();
const db = new sqlite3.Database(".database/data_source.db");

let myString = "[\n";
db.all("SELECT * FROM holidays", function (err, rows) {
    let myCounter = 0;
    rows.forEach(function (row) {
        // for debugging
        // console.log(row.extID + ": " + row.name + ": " + row.hyperlink + ": " + row.about + ": " + row.image + ": " + row.language);
        myString =
            myString +
            '{\n"id":' +
            row.id +
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

  // console.log(myString);
    var fs = require("fs");
    fs.writeFile("public/frontEndData.json", myString + "]", function (err) {
        if (err) {
            console.log(err);
        }
    });
});

// Insert additional backend js above the express server configuration

const express = require("express");
const path = require("path");
const app = express();
app.use(express.static(path.join(__dirname, "public")));

app.get("/", function (req, res) {
    res.sendFile(path.join(__dirname, "public/index.html"));
});
app.listen(5000, () =>
    console.log(
        "Server is running on Port 5000, visit http://localhost:5000/ or http://127.0.0.1:5000 to access your website"
    )
);
