import http.server
import socketserver
from http import HTTPStatus

PORT = 8080

class Handler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(HTTPStatus.OK)
        self.end_headers()
        self.wfile.write(b'This is the main.py file. Change CMD command in your Dockerfile to start the container with a different python script.')

httpd = socketserver.TCPServer(('', PORT), Handler)
print("serving at port", PORT)
httpd.serve_forever()
