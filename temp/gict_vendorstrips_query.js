var columns = ['id', 'striptypeid', 'vendorid', 'licenseno', 'issedby', 'issueddate', 'memo1', 'memo2', 'udfdate1', 'udfdate2', 'createdby', 'createdate', 'updatedy', 'updatedate', 'deleted'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'vendorstrips', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO vendorstrips SET ?', vendorstrips.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['vendorstrips', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE vendorstrips SET id = ?, striptypeid = ?, vendorid = ?, licenseno = ?, issedby = ?, issueddate = ?, memo1 = ?, memo2 = ?, udfdate1 = ?, udfdate2 = ?, createdby = ?, createdate = ?, updatedy = ?, updatedate = ?, deleted = ? WHERE id = ?', [model.id, model.striptypeid, model.vendorid, model.licenseno, model.issedby, model.issueddate, model.memo1, model.memo2, model.udfdate1, model.udfdate2, model.createdby, model.createdate, model.updatedy, model.updatedate, model.deleted, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'striptypeid', 'vendorid', 'licenseno', 'issedby', 'issueddate', 'memo1', 'memo2', 'udfdate1', 'udfdate2', 'createdby', 'createdate', 'updatedy', 'updatedate', 'deleted'];
        var inserts = [columns, 'vendorstrips', 'id', id];
        sql = mysql.format(sql, inserts);