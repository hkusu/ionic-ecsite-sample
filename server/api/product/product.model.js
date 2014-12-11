'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var ProductSchema = new Schema({
  name: String,
  price: String,
  description: String,
  image: String
});

module.exports = mongoose.model('Product', ProductSchema);
