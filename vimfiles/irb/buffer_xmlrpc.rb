require "xmlrpc/client"
require "pp"

server = XMLRPC::Client.new2("http://xmlrpc-c.sourceforge.net/api/sample.php")
result = server.call("sample.sumAndDifference", 5, 3)
pp result

