import eel
#from gpiozero import Relay, Switch



"""relay1 = Relay(10)
relay2 = Relay(11)
switch1 = Switch(9)"""


eel.init("web")
eel.start("main.html", block=False, size=(480, 800))



@eel.expose
def queryLocalBarcode(barcodeNum):
    """barcodeNum = barcodeNum + " barcode number returned"
    print(barcodeNum)
    return barcodeNum"""

    timeFile = open("timeDatabase.txt", "r")
    f1 = timeFile.readlines()
    for lines in f1:
        line = lines.split(" ")
        if line[0] == barcodeNum:
            setTime(line[1] + " " + line[2])
            return lastTime

@eel.expose
def queryWebBarcode(barcodeNum):
    """get time      from server"""

@eel.expose
def setTime(num1):
    global lastTime
    lastTime = num1

@eel.expose
def getTime():
    return lastTime

@eel.expose
def switch(param):
    """turn on or off relays here"""

@eel.expose
def checkIfOnline():
    #return 1 if online
    #return 0 if offline
    return "0"


"""
@eel.expose
def door(param):
    # read door pin
    # 0 is closed
    # 1 is open
    """



while True:
    eel.sleep(10)

