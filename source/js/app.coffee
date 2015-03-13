"use strict"

angular = require "angular"

WelcomeCtrl = require "./controllers/welcome"

app = angular.module("myApp", [require "angular-route"])

app.controller("WelcomeCtrl", ["$scope", WelcomeCtrl]);
