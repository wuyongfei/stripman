var columns = ['id', 'strip', 'stripen', 'usage', 'usageen', 'memo', 'createdy', 'createdate', 'updatedy', 'updatedate', 'deleted'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'striptypes', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO striptypes SET ?', striptypes.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['striptypes', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE striptypes SET id = ?, strip = ?, stripen = ?, usage = ?, usageen = ?, memo = ?, createdy = ?, createdate = ?, updatedy = ?, updatedate = ?, deleted = ? WHERE id = ?', [model.id, model.strip, model.stripen, model.usage, model.usageen, model.memo, model.createdy, model.createdate, model.updatedy, model.updatedate, model.deleted, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'strip', 'stripen', 'usage', 'usageen', 'memo', 'createdy', 'createdate', 'updatedy', 'updatedate', 'deleted'];
        var inserts = [columns, 'striptypes', 'id', id];
        sql = mysql.format(sql, inserts);