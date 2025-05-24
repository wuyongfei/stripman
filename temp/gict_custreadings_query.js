var columns = ['id', 'customerid', 'stripid', 'reading', 'temperature', 'location', 'pixel', 'timestamp', 'memo', 'striptypeid'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'custreadings', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO custreadings SET ?', custreadings.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['custreadings', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE custreadings SET id = ?, customerid = ?, stripid = ?, reading = ?, temperature = ?, location = ?, pixel = ?, timestamp = ?, memo = ?, striptypeid = ? WHERE id = ?', [model.id, model.customerid, model.stripid, model.reading, model.temperature, model.location, model.pixel, model.timestamp, model.memo, model.striptypeid, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'customerid', 'stripid', 'reading', 'temperature', 'location', 'pixel', 'timestamp', 'memo', 'striptypeid'];
        var inserts = [columns, 'custreadings', 'id', id];
        sql = mysql.format(sql, inserts);