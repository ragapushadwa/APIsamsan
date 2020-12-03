'use strict';

var response = require('./res');
var connection = require('./conn');

exports.users = function(req, res) {
    connection.query('SELECT transaksi.id_transaksi,transaksi.waktu_pengiriman,pengirim.nama_pengirim,penerima.nama_penerima,penerima.alamat_penerima,transaksi.harga,transaksi.status_pengiriman FROM transaksi LEFT JOIN pengirim ON transaksi.id_pengirim = pengirim.id_pengirim LEFT JOIN penerima ON transaksi.id_penerima = penerima.id_penerima'
    , function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
           rows.forEach(data => {data.status=' Data found' });
            response.ok(rows, res)
            console.log(rows)
        }
    });
};

exports.findUsers = function(req, res) {
    
    var id_transaksi = req.params.id_transaksi;

    connection.query('SELECT transaksi.id_transaksi,transaksi.waktu_pengiriman,pengirim.nama_pengirim,penerima.nama_penerima,penerima.alamat_penerima,transaksi.harga,transaksi.status_pengiriman FROM transaksi LEFT JOIN pengirim ON transaksi.id_pengirim = pengirim.id_pengirim LEFT JOIN penerima ON transaksi.id_penerima = penerima.id_penerima WHERE transaksi.id_transaksi = ?',
    [ id_transaksi ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            rows.forEach(data => {data.status=' Data found' });
            response.ok(rows, res)
        }
    });
};

exports.index = function(req, res) {
    response.ok("Selamat Datang di SAMSAN API", res)
};