//this will allow us to pull params from .env file
require("dotenv").config();

//This middleware will allow us to pull req.body.<params>
const express = require('express');
const app = express();
app.use(express.json());

const bcrypt = require('bcrypt');
const users = [];
const saltRounds = 10;
// const salt = bcrypt.genSaltSync(saltRounds);
// const hash = bcrypt.hashSync(myPlaintextPassword, salt);

const jwt = require("jsonwebtoken");

app.post("/createUser", async (req, res) => {
    const user = req.body.name;
    // const hashedPassword = await bcrypt.hash(req.body.password, saltRounds);
    const salt = await bcrypt.genSalt(saltRounds);
    console.log(req.body.password);
    const hashedPassword = await bcrypt.hash(req.body.password, saltRounds);

    users.push({ user: user, password: hashedPassword });

    res.status(201).send(users);
    console.log(users);
});

app.post("/login", async (req, res) => {
    const user = users.find((c) => c.user == req.body.name);

    //check to see if the user exists in the list of registered users
    if (user == null)
        res.status(404).send("User does not exist!");

    //if user does not exist, send a 400 response
    if (await bcrypt.compare(req.body.password, user.password)) {

        const accessToken = generateAccessToken({ user: req.body.name });
        const refreshToken = generateRefreshToken({ user: req.body.name });

        res.json({ accessToken: accessToken, refreshToken: refreshToken });
    }
    else {
        res.status(401).send("Password Incorrect!");
    }
});

//REFRESH TOKEN API
app.post("/refreshToken", (req, res) => {
    if (!refreshTokens.includes(req.body.token)) res.status(400).send("Refresh Token Invalid");

    refreshTokens = refreshTokens.filter((c) => c != req.body.token);

    //remove the old refreshToken from the refreshTokens list
    const accessToken = generateAccessToken({ user: req.body.name });
    const refreshToken = generateRefreshToken({ user: req.body.name });

    //generate new accessToken and refreshTokens
    res.json({ accessToken: accessToken, refreshToken: refreshToken });
});

app.delete("/logout", (req, res) => {

    //remove the old refreshToken from the refreshTokens list
    refreshTokens = refreshTokens.filter((c) => c != req.body.token);

    res.status(204).send("Logged out!");

});


// accessTokens
function generateAccessToken(user) {
    return jwt.sign(user, process.env.ACCESS_TOKEN_SECRET, { expiresIn: "15m" });
}

// refreshTokens
let refreshTokens = [];
function generateRefreshToken(user) {
    const refreshToken = jwt.sign(user, process.env.REFRESH_TOKEN_SECRET, { expiresIn: "20m" });
    refreshTokens.push(refreshToken);
    return refreshToken;
}

//get the port number from .env file0
const port = process.env.TOKEN_SERVER_PORT;

app.listen(port, () => {
    console.log(`Authorization Server running on ${port}...`);
});
