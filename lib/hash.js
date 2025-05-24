//const bcrypt = require('bcrypt');
const config = require('./configure.js').base;

const crypto = require('crypto');
//const saltRounds = 10;

/**
 * hash plain text, sync
 * @param {string} plainText text to be hashed
 * @returns string
 */
function makeHash(plainText) {
    //const salt = bcrypt.genSaltSync(saltRounds);
    //const hashed = bcrypt.hashSync(plainText, salt);
    var hashed = crypto.createHash('md5').update(plainText).digest('hex');
    return hashed.toString();
}

/**
 * hash plain text, async
 * @param {string} plainText text to be hashed
 * @returns string
 */
async function makeHashAsync(plainText) {
    //const salt = await bcrypt.genSalt(saltRounds);
    //const hashed = await bcrypt.hash(plainText, saltRounds);
    //return hashed;
    var hashed = crypto.createHash('md5').update(plainText).digest('hex');
    return hashed.toString();
}

module.exports = { makeHash, makeHashAsync };
