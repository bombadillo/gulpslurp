var Animal, Customer, exports;

Animal = (function() {
  function Animal() {}

  Animal.prototype.price = 5;

  Animal.prototype.sell = function(customer) {
    return console.log(customer.name);
  };

  return Animal;

})();

Customer = (function() {
  Customer.prototype.name = "unknown";

  function Customer(name, wallet) {
    if (wallet == null) {
      wallet = 0.00;
    }
    this.name = name;
    this.wallet = wallet;
  }

  Customer.prototype.sayName = function() {
    return console.log("my name is " + this.name);
  };

  return Customer;

})();

exports = this;

exports.Animal = Animal;

exports.Customer = Customer;
