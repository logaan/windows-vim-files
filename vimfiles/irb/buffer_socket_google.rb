stream = TCPSocket.new( "www.google.com.au" , 80 )
stream.write( "GET / HTTP/1.1" )
response = stream.recv( 100 )
puts response
stream.close

