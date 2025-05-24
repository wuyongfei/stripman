
const { makeHash } = require('../lib/hash.js');
const encrypted = makeHash("12345678");
console.log(encrypted);