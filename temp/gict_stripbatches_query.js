var columns = ['id', 'vendorstripid', 'batchno', 'upc', 'memo', 'pack', 'storage', 'algrith', 'productiondate', 'createdby', 'createdate', 'updatedby', 'updatedate', 'deleted'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'stripbatches', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO stripbatches SET ?', stripbatches.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['stripbatches', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE stripbatches SET id = ?, vendorstripid = ?, batchno = ?, upc = ?, memo = ?, pack = ?, storage = ?, algrith = ?, productiondate = ?, createdby = ?, createdate = ?, updatedby = ?, updatedate = ?, deleted = ? WHERE id = ?', [model.id, model.vendorstripid, model.batchno, model.upc, model.memo, model.pack, model.storage, model.algrith, model.productiondate, model.createdby, model.createdate, model.updatedby, model.updatedate, model.deleted, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'vendorstripid', 'batchno', 'upc', 'memo', 'pack', 'storage', 'algrith', 'productiondate', 'createdby', 'createdate', 'updatedby', 'updatedate', 'deleted'];
        var inserts = [columns, 'stripbatches', 'id', id];
        sql = mysql.format(sql, inserts);