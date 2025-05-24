var columns = ['id', 'customername', 'street', 'city', 'province', 'postalcode', 'idtype', 'idno', 'registerdate', 'healthcardno', 'memo', 'agentid', 'mobile', 'phone', 'email', 'other', 'birthdate'];

var cmd = connection.query('SELECT ?? FROM ?? WHERE id = ?', [columns, 'customers', id], function (error, results, fields) {
            if (error) throw error;
            // ...
          });

var cmd = connection.query('INSERT INTO customers SET ?', customers.model, function (error, results, fields) {
          if (error) throw error;
          // Neat!
          console.log(results.insertId);
        });

var cmd = connection.query('DELETE FROM ?? WHERE ?? = ?', ['customers', 'id', id], function (error, results, fields) {
            if (error) throw error;
            console.log('deleted ' + results.affectedRows + ' rows');
          });


        
        var id = model.id;
        delete model.id;

        var cmd = connection.query('UPDATE customers SET id = ?, customername = ?, street = ?, city = ?, province = ?, postalcode = ?, idtype = ?, idno = ?, registerdate = ?, healthcardno = ?, memo = ?, agentid = ?, mobile = ?, phone = ?, email = ?, other = ?, birthdate = ? WHERE id = ?', [model.id, model.customername, model.street, model.city, model.province, model.postalcode, model.idtype, model.idno, model.registerdate, model.healthcardno, model.memo, model.agentid, model.mobile, model.phone, model.email, model.other, model.birthdate, id], function (error, results, fields) {
            if (error) throw error;
            console.log('changed ' + results.changedRows + ' rows');
          });

var sql = "SELECT ?? FROM ?? WHERE ?? = ?";
        var columns = ['id', 'customername', 'street', 'city', 'province', 'postalcode', 'idtype', 'idno', 'registerdate', 'healthcardno', 'memo', 'agentid', 'mobile', 'phone', 'email', 'other', 'birthdate'];
        var inserts = [columns, 'customers', 'id', id];
        sql = mysql.format(sql, inserts);