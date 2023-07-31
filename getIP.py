import sys
import time
import socket

def mainFunc():
    ip = None
    attempts = 5

    while((ip == None) and (attempts > 0)):
        time.sleep(2) #give time for connection to be made
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            s.connect(("8.8.8.8", 80))
            ip=s.getsockname()[0]
            s.close()
        except:
            pass
        attempts-=1

    if(ip):
        print(ip, end='', flush=True)
        sys.exit(0)
    else:
        print("NO_IP", end='', flush=True)
        sys.exit(1)


if __name__ == '__main__':
    mainFunc()
