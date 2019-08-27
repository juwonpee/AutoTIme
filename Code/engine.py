import eel

eel.init("web")
eel.start("main.html", block=False, size=(800, 480))



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

'''https://jsfiddle.net/Daniel_Hug/pvk6p/'''



while True:
    eel.sleep(10)

