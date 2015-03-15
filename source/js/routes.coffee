"use strict"

module.exports = ($routeProvider) ->
  $routeProvider
    .when "/",
      controller: require "./controllers/welcome"
      templateUrl: "public/js/templates/welcome.html"
    .otherwise redirectTo: "/jobby"
 
