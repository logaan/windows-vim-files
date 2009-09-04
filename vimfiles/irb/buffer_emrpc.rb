require "emrpc"

client = EMRPC::Client.new( :host => "http://accelerator.webfirm.com/api/xmlrpcserver.php?version=1.2", :port => 80 )
api_path = client.login("developer", "qpwoeiru")

