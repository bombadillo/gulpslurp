"use strict"

angular = require "angular"
require "angular-route/angular-route"

app = angular.module("myApp", ["ngRoute"])

app.config require "./routes"

#app.controller("WelcomeCtrl", ["$scope", WelcomeCtrl]);
