const {sign} = require('../api/tokenhandler.js');

let payload = {"id": 1, "username": "admin"};
sign(payload, function(err, token){
    if(err) console.log(err);

    console.log(token);
});