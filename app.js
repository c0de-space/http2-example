const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send("a")
})

module.exports = app