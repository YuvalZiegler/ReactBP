var Mincer  = require('mincer');
var path = require('path');
var environment = module.exports = new Mincer.Environment(__dirname);

// Add coffee CJX compiler
Mincer.Template.libs["coffee"] = require("coffee-react");

Mincer.logger.use(console);

environment.enable('source_maps');

environment.appendPath('../app/js');
environment.appendPath('../app/css/');
environment.appendPath('../app/images');


// environment.cache = new Mincer.FileStore(path.join(__dirname, 'cache'));
