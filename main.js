'use strict';

var http = require( 'http' ); // do not change this line

var port = Number( 8000 );
var hostname = '0.0.0.0';

var server = http.createServer( function ( request, response ) {
    console.log( "Coming a request" );
    response.statusCode = 200;
    response.setHeader( 'content-type', 'text/html' );
    response.write( '<!DOCTYPE html><html><body>Hello World!!</body></html>' );
    response.end( '<!-- < E N D > -->' );

} );

server.listen( port, hostname, () => {
    console.log( `Server running at http://${hostname}:${port}/` );
} );

// any request should return '<!DOCTYPE html><html><body>lorem ipsum</body></html>' as html