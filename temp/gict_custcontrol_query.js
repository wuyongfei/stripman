var columns = ['customerid', 'name', 'password', 'sessionid', 'expiry', 'securitykey'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'custcontrol', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO custcontrol SET ?', custcontrol.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['custcontrol', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE custcontrol SET customerid = ?, name = ?, password = ?, sessionid = ?, expiry = ?, securitykey = ? WHERE id = ?', [model.customerid, model.name, model.password, model.sessionid, model.expiry, model.securitykey, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['customerid', 'name', 'password', 'sessionid', 'expiry', 'securitykey'];
        var inserts = [columns, 'custcontrol', 'id', id];
        sql = mysql.format(sql, inserts);