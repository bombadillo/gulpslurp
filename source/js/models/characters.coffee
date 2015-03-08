class Animal
  price: 5

  sell: (customer) ->
      console.log customer.name

class Customer
    name: "unknown"

    constructor: (name, wallet = 0.00) ->
        @name = name
        @wallet = wallet

    sayName: ->
        console.log "my name is " + @name

exports = this
exports.Animal = Animal
exports.Customer = Customer
