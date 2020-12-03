'use strict';

exports.ok = function(values, res) {
    //values.map(item=>item.status='found')
    console.log(values)
    var data = {
      'status': 200,
       values
  };
  res.json(data);
  res.end();
};