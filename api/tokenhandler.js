const jwt = require('jsonwebtoken');
// const secrets = require('./token.json');
const config = require('../lib/configure.js').base;
const cert = config.secret_key;
const tokenExpiresIn = config.tokenExpiresIn;

/**
 * Sign the token
 * 
 * @param {Object} payload for example, {id: 1, username: "admin"}
 * @param {Function} callback 
 */
function sign(payload, callback) {

    //let cert = secrets[user];
    //if (cert === undefined) {
    //    cert = secrets['__'];
    //}

    // console.log('sign.cert = ', cert);
    let opts = {
        expiresIn: tokenExpiresIn
    };

    jwt.sign(payload, cert, opts, function (err, token) {

        if (err) {
            callback(err, null);
        }

        callback(null, token);
    });

}
exports.sign = sign;

/**
 * Verify Token
 * 
 * @param {String} token Token from the client
 * @param {function} callback 
 * @returns callback
 */
function verify(token, callback) {

    //try {
    // let cert = secrets[user];
    // if (cert === undefined) {
    //    cert = secrets['__'];
    // }

    jwt.verify(token, cert, function (err, decoded) {
        if (err) {
            callback(err, err.message);
        }

        callback(null, decoded);
    });

}

exports.verify = verify;

const checkToken = (req, res, next) => {
    const header = req.headers.Authorization;       // ['Authorization'];

    if (header) {
        const bearer = header.split(' ');
        const token = bearer[1];

        verify(token, (err, decoded) => {
            if (err) {
                return res.sendStatus(403);
            }

            req.token = token;
            next();

        });
    } else {
        //If header is undefined return Forbidden (403)
        res.sendStatus(403);
    }
};

exports.checkToken = checkToken;

const authenticateJWT = (req, res, next) => {
    //console.log("originalUrl", req.originalUrl);
    //console.log("url", req.url);
    //console.log("path", req.path);
    //console.log("baseUrl", req.baseUrl);
    //console.log("hostname", req.hostname);
    //console.log("authorization", req.headers.authorization); // OR req.header('host'));
    //console.log("protocol", req.protocol);

    const path = req.path.toLowerCase();
    if (!path.startsWith("/api/v1")) {
        next();
    }
    else {

        const authHeader = req.headers.authorization;
        // console.log(req.url, authHeader);

        if (authHeader) {
            const token = authHeader.split(' ')[1];

            jwt.verify(token, cert, (err, decoded) => {
                if (err) {
                    return res.sendStatus(403);
                }

                // console.log(decoded);
                req.user = decoded;
                // req.locals.roles = decoded.roles;

                next();
            });
        } else {
            res.sendStatus(403);
        }
    }
};

exports.authenticateJWT = authenticateJWT;

const hasRoleOf = (role) => {

    return function (req, res, next) {
        if (!req.hasOwnProperty("user")) {
            next();
        }
        else {

            // console.log(req.user);

            if (req.user.roles.includes(role)) {
                next();
            }
            else
                res.sendStatus(403);
        }

    };
};

exports.hasRoleOf = hasRoleOf;
