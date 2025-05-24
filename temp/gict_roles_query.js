var columns = ['id', 'role', 'descr'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'roles', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO roles SET ?', roles.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['roles', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE roles SET id = ?, role = ?, descr = ? WHERE id = ?', [model.id, model.role, model.descr, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'role', 'descr'];
        var inserts = [columns, 'roles', 'id', id];
        sql = mysql.format(sql, inserts);