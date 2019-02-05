var inquirer = require('inquirer');
var mysql = require('mysql');

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "famazon"
});

connection.connect(function (err) {
    if (err) throw err;
    runSearch();
});

function runSearch() {
    inquirer
        .prompt({//The first should ask them the ID of the product they would like to buy.
            name: "decide",
            type: "rawlist",
            message: "What would you like to buy?",
            choices: [
                "Shoes",
                "Sandals",
                "Heels",
                "Gloves",
                "Mittens",
                "Beanie",
                "Helmet",
                "Jeans",
                "T-shirt",
                "Dress Shirt"
            ]
        })
        .then(function (answer) {
            switch (answer.action) {
                case "Shoes":
                    apperalSearch();
                    break;
                case "Heels":
                    apperalSearch();
                    break;
                case "Sandals":
                    apperalSearch();
                    break;
                case "Gloves":
                    apperalSearch();
                    break;
                case "Mittens":
                    apperalSearch();
                    break;
                case "Beanie":
                    apperalSearch();
                    break;
                case "Helmet":
                    apperalSearch();
                    break;
                case "Jeans":
                    apperalSearch();
                    break;
                case "T-shirt":
                    apperalSearch();
                    break;
                case "Dress Shirt":
                    apperalSearch();
                    break;
            }
        });
}

function apperalSearch() {
    inquirer
        .prompt({//The second message should ask how many units of the product they would like to buy.
            name: "artist",
            type: "input",
            message: "How many units would you like to buy?"
        })
        .then(function (answer) {
            var query = "SELECT stock_quantity FROM products WHERE ?";
            connection.query(query, { artist: answer.artist }, function (err, res) {
                for (var i = 0; i < res.length; i++) {
                    console.log("Position: " + res[i].position + " || Song: " + res[i].song + " || Year: " + res[i].year);
                }
                runSearch();
            });
        });
}