var Customer, exports, performSales;

Customer = require("../models/characters").Customer;

performSales = function(animal) {
  animal.sell(new Customer("Frank"));
  animal.sell(new Customer("Bob"));
  animal.sell(new Customer("Chris"));
  animal.sell(new Customer("Laura"));
  animal.sell(new Customer("Luke"));
  animal.sell(new Customer("Peter"));
  return animal.sell(new Customer("David"));
};

exports = this;

exports.performSales = performSales;
