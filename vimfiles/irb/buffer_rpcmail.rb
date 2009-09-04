require "xmlrpc/client"
require "pp"

login_server = XMLRPC::Client.new2( "http://accelerator.webfirm.com/api/xmlrpcserver.php?version=1.2" )
api_path = login_server.call("login", "developer", "qpwoeiru")
server = XMLRPC::Client.new2( api_path )

begin
  colin_id = server.call("subscribeContact", 185542, {:email => "colin.campbell-mcpherson@webfirm.com"})
rescue XMLRPC::FaultException => e
  puts "Error:"
  puts e.faultCode
  puts e.faultString
end
