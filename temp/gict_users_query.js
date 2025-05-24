var columns = ['id', 'username', 'password', 'enabled', 'loggedOn', 'logggedoff', 'retris', 'mustchangepwd', 'locked', 'vendorid'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'users', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO users SET ?', users.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['users', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE users SET id = ?, username = ?, password = ?, enabled = ?, loggedOn = ?, logggedoff = ?, retris = ?, mustchangepwd = ?, locked = ?, vendorid = ? WHERE id = ?', [model.id, model.username, model.password, model.enabled, model.loggedOn, model.logggedoff, model.retris, model.mustchangepwd, model.locked, model.vendorid, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'username', 'password', 'enabled', 'loggedOn', 'logggedoff', 'retris', 'mustchangepwd', 'locked', 'vendorid'];
        var inserts = [columns, 'users', 'id', id];
        sql = mysql.format(sql, inserts);