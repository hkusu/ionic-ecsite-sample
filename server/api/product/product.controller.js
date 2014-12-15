'use strict';

var white_list = [
  '113.43.73.18',
  '',
  ''
];

var _ = require('lodash');
var Product = require('./product.model');

// Get list of products
exports.index = function(req, res) {

/*
  // Check client ip address
  var client_ip = req.connection.remoteAddress;
  if (client_ip != '127.0.0.1') {
    client_ip = req.header('x-forwarded-for');
    var i;
    var ng = true;
    for ( i=0; i < white_list.length; i++ ){
      if(client_ip == white_list[i]) {
        ng = false;
      }
    }
    if (ng) {return res.send(500);}
  }
*/

  Product.find(function (err, products) {
    if(err) { return handleError(res, err); }
    return res.json(200, products);
  });
};

// Get a single product
exports.show = function(req, res) {
  Product.findById(req.params.id, function (err, product) {
    if(err) { return handleError(res, err); }
    if(!product) { return res.send(404); }
    return res.json(product);
  });
};

// Creates a new product in the DB.
exports.create = function(req, res) {
  Product.create(req.body, function(err, product) {
    if(err) { return handleError(res, err); }
    return res.json(201, product);
  });
};

// Updates an existing product in the DB.
exports.update = function(req, res) {
  if(req.body._id) { delete req.body._id; }
  Product.findById(req.params.id, function (err, product) {
    if (err) { return handleError(res, err); }
    if(!product) { return res.send(404); }
    var updated = _.merge(product, req.body);
    updated.save(function (err) {
      if (err) { return handleError(res, err); }
      return res.json(200, product);
    });
  });
};

// Deletes a product from the DB.
exports.destroy = function(req, res) {
  Product.findById(req.params.id, function (err, product) {
    if(err) { return handleError(res, err); }
    if(!product) { return res.send(404); }
    product.remove(function(err) {
      if(err) { return handleError(res, err); }
      return res.send(204);
    });
  });
};

function handleError(res, err) {
  return res.send(500, err);
}
