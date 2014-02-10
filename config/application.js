//= require jquery
//= require modernizr.custom
//= require classie
//= require modalEffects
//= require cssParser
//= require underscore-min
//= require environment
//= require ember-appkit
//= require_self
//= require_tree ./adapters
//= require router
//= require_tree ../app
//= require_tree ./initializers

window.App = require('app').default.create();

var polyfilter_scriptpath = '/js/'
//= require css-filters-polyfill
