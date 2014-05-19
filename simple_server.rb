require 'socket'               # Get sockets from stdlib

server = TCPServer.open(1337)  # Socket to listen on port 2000
loop {                         # Servers run forever
  client = server.accept       # Wait for a client to connect
  client.puts(Time.now.ctime)  # Send the time to the client
  client.puts "Closing the connection. Bye!"
#  entrada = client.gets
#  puts entrada
  client.close                 # Disconnect from the client
}
#leonel@backupnet.com.ar