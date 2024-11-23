

const express = require("express");
const path = require("path");
const app = express();
app.use(express.static(path.join(__dirname, "newpage")));

app.get("/", function (req, res) {
    res.sendFile(path.join(__dirname, "newpage/index.html"));
});
app.listen(5000, () =>
    console.log(
        "Server is running on Port 5000, visit http://localhost:5000/ or http://127.0.0.1:5000 to access your website"
    )
);