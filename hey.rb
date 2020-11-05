require 'socket'

hey = <<-HEREDOC

       __                 
      / /_  ___  __  __   
     / __ \\/ _ \\/ / / /   
    / / / /  __/ /_/ /    
   /_/ /_/\\___/\\__, /     
              /____/      

HEREDOC

server = TCPServer.new 8000

while session = server.accept
  request = session.gets
  puts request

  session.print "HTTP/1.1 200\r\n" # 1
  session.print "Content-Type: text/html\r\n" # 2
  session.print "\r\n" # 3

  session.print "<style>*{font-family:monospace}</style>"
  session.print "<pre>#{hey}</pre>"

  session.close
end