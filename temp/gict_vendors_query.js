var columns = ['id', 'name', 'street', 'city', 'province', 'postalcode', 'contact', 'title', 'mobile', 'phone', 'email', 'website', 'status', 'createdby', 'createdate', 'updatedby', 'updatedate', 'memo'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'vendors', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO vendors SET ?', vendors.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['vendors', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE vendors SET id = ?, name = ?, street = ?, city = ?, province = ?, postalcode = ?, contact = ?, title = ?, mobile = ?, phone = ?, email = ?, website = ?, status = ?, createdby = ?, createdate = ?, updatedby = ?, updatedate = ?, memo = ? WHERE id = ?', [model.id, model.name, model.street, model.city, model.province, model.postalcode, model.contact, model.title, model.mobile, model.phone, model.email, model.website, model.status, model.createdby, model.createdate, model.updatedby, model.updatedate, model.memo, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'name', 'street', 'city', 'province', 'postalcode', 'contact', 'title', 'mobile', 'phone', 'email', 'website', 'status', 'createdby', 'createdate', 'updatedby', 'updatedate', 'memo'];
        var inserts = [columns, 'vendors', 'id', id];
        sql = mysql.format(sql, inserts);