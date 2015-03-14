fs = require "fs"

module.exports = ($routeProvider) ->
  $routeProvider
    .when "/", ->
      controller: require "./controllers/welcome"
      template: fs.readFileSync("../templates/welcome.html")
