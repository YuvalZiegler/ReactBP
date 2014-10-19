var express = require('express');
var app = express();
// Sprockets node clone
var Mincer  = require('mincer');
var environment = app.get('env'); 
var mincerEnvironment = require('./config/assetPipeline')

// Browser Sync
if (environment=="development") {
 require('./config/development')(app)
}

// Express Views Setup
app.set('view engine', 'jade')
app.set('views', './app')


app.use('/assets', Mincer.createServer(mincerEnvironment));

app.get('/', function(req, res){

  res.set('Content-Type', 'text/html');
  res.render('index', { 
    environment: environment, 
    pageTitle: "Fretboard" 

  });

});
  
app.listen(3000)
console.log("[APP] http://localhost:3000")


