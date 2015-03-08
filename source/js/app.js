var Animal, Sales, animal;

Sales = require("./functions/sales");

Animal = require("./models/characters").Animal;

console.log(Animal);

animal = new Animal;

Sales.performSales(animal);
