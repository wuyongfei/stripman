var columns = ['userId', 'username', 'password'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'usertable', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO usertable SET ?', usertable.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['usertable', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE usertable SET userId = ?, username = ?, password = ? WHERE id = ?', [model.userId, model.username, model.password, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['userId', 'username', 'password'];
        var inserts = [columns, 'usertable', 'id', id];
        sql = mysql.format(sql, inserts);