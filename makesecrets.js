const crypto = require("crypto");

let secret_key = crypto
    .randomBytes(64)
    .toString("hex");

console.log('base64', secret_key);

//secret_key = crypto.randomBytes(64).toString("hex");
//console.log(secret_key);

const UDI = '10841522118579';
const ESP32 = '0A1B3C4D5E6F'; // ESP32 CPUID + MAC
const key2 = 'CACAPOCT';

secret_key = crypto
    .createHash('sha256')
    .update(UDI + key2)
    .digest('hex');

console.log("hash", secret_key);

// or UDI for the box
secret_key = crypto.createHmac('sha256', ESP32 + key2)
    .update(UDI)
    .digest('hex');

console.log("HMAC", secret_key);
