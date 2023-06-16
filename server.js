const express = require('express');
const app = express();
const BodyParser = require('body-parser');

const PORT = 3000;
app.listen(PORT, () => {
    console.log('Server is running on port ' + PORT);
});

// Middleware for parsing JSON and URL-encoded query string
app.use(BodyParser.json({
    limit: '50mb',
})); // parse JSON
app.use(BodyParser.urlencoded({
    limit: '50mb',
    extended: false,
})); // parse URL-encoded bodies


app.get('/', (req, res) => {
    res.send('Hello World' + req.path);
});
