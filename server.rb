require 'socket'                                    # Require socket from Ruby Standard Library (stdlib)

host = 'localhost'
port = 2000

server = TCPServer.open(host, port)                 # Socket to listen to defined host and port
puts "Server started on #{host}:#{port} ..."        # Output to stdout that server started

loop do                                             # Server runs forever
  client = server.accept                            # Wait for a client to connect. Accept returns a TCPSocket

  lines = []
  while (line = client.gets.chomp) && !line.empty?  # Read the request and collect it until it's empty
    lines << line
  end
  puts lines                                        # Output the full request to stdout



  # filename = line.gsub(/GET \//,'').gsub(/\ HTTP.*/,'')
  filename = 'index.html'

  if File.exists?(filename)
    response = File.read(filename)
  else
    response = "File not found\n"
  end

  # client.puts(Time.now.ctime)
  client.puts(response)
  client.close                                      # Disconnect from the client
end
