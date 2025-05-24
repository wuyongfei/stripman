const {verify} = require('../api/tokenhandler.js');

let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJhZG1pbiIsImlhdCI6MTY0NDcyMjMyOSwiZXhwIjoxNjQ0ODA4NzI5fQ.8ARTydtELM8dQsyhEux5Rd38H_ecHx3doomuw71TaLM";

verify(token, function(err, decoded){
    if(err) console.log(err);

    console.log(decoded);
});