var browserSync = require('browser-sync');

var bs = browserSync.init([], {
	debugInfo: true, 
	files:["app/**/*"]
});
var connectBrowserSync = require('connect-browser-sync')(bs)

function initialize(app){
	app.use(connectBrowserSync)
}

module.exports = initialize;