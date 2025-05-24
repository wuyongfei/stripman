var columns = ['id', 'batchid', 'upc', 'productiondate', 'expirydate', 'totalunits', 'unitsused', 'memo', 'createdby', 'createdate', 'updatedby', 'updatedate', 'deleted', 'buydate', 'buyerid', 'unitprice', 'cost', 'sellerid', 'shipdate'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'strips', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO strips SET ?', strips.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['strips', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE strips SET id = ?, batchid = ?, upc = ?, productiondate = ?, expirydate = ?, totalunits = ?, unitsused = ?, memo = ?, createdby = ?, createdate = ?, updatedby = ?, updatedate = ?, deleted = ?, buydate = ?, buyerid = ?, unitprice = ?, cost = ?, sellerid = ?, shipdate = ? WHERE id = ?', [model.id, model.batchid, model.upc, model.productiondate, model.expirydate, model.totalunits, model.unitsused, model.memo, model.createdby, model.createdate, model.updatedby, model.updatedate, model.deleted, model.buydate, model.buyerid, model.unitprice, model.cost, model.sellerid, model.shipdate, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'batchid', 'upc', 'productiondate', 'expirydate', 'totalunits', 'unitsused', 'memo', 'createdby', 'createdate', 'updatedby', 'updatedate', 'deleted', 'buydate', 'buyerid', 'unitprice', 'cost', 'sellerid', 'shipdate'];
        var inserts = [columns, 'strips', 'id', id];
        sql = mysql.format(sql, inserts);