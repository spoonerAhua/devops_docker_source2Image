var http = require('http');
var url = require('url');
http.createServer( function (request, response) {  
   var pathname = url.parse(request.url).pathname;
   console.log("Request for " + pathname + " received.");
   response.writeHead(200, {'Content-Type': 'text/html'});    
   response.write("Hello world 11!\r\n");        
   response.end();
}).listen(8080);
