var columns = ['id', 'customerid', 'eventtype', 'event', 'timestamp', 'location', 'memo'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'custlog', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO custlog SET ?', custlog.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['custlog', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE custlog SET id = ?, customerid = ?, eventtype = ?, event = ?, timestamp = ?, location = ?, memo = ? WHERE id = ?', [model.id, model.customerid, model.eventtype, model.event, model.timestamp, model.location, model.memo, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'customerid', 'eventtype', 'event', 'timestamp', 'location', 'memo'];
        var inserts = [columns, 'custlog', 'id', id];
        sql = mysql.format(sql, inserts);