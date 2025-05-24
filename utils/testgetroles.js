const { GetRoles } = require('../dao/userhandler.js');

GetRoles(49, function (err, result) {
    console.log(result);
});