'use strict';

module.exports = function(app) {
    var todoList = require('./controller');

    app.route('/')
        .get(todoList.index);

    app.route('/transaksi')
        .get(todoList.users);

        app.route('/transaksi/:id_transaksi')
        .get(todoList.findUsers);

};  