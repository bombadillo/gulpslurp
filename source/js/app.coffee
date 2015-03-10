"use strict"

angular = require "angular"

WelcomeCtrl = require "./controllers/welcome"

app = angular.module('myApp', [])

app.controller('WelcomeCtrl', ['$scope', WelcomeCtrl]);
