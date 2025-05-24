const Chance = require('chance');
const chance = new Chance();

const handler = require('../dao/daohandler2.js');
const dbmodel = require('../dao/model.json').users;

const fs = require('fs');

let json = {
    "__": chance.string({length: 16, pool: 'abcdefghijklmnopqrstuvwxyz0123456789'})
};

handler.get("users", function(err, users){

    users.forEach(user => {
        console.log(user.username);
        json[user.username] = chance.string({length: 16, pool: 'abcdefghijklmnopqrstuvwxyz0123456789'});
    });

    console.log(json);
    fs.writeFileSync('./api/token.json', JSON.stringify(json), 'utf-8');
});
