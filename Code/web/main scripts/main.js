var seconds = 0
var minutes = 0
var timeText = ""
var online = "1"


function barcodeRun(event) {
    //check online status
    //online = eel.checkIfOnline()()
    console.log(online)

    //See notes about 'which' and 'key'
    if (event.keyCode == 13) {
        //get value
        var barNum = document.getElementById("barcodeText").value;
        //callback function
        function printNum(time) {
            console.log("returned " + time)
            window.open("timer.html", "_self")
                //document.getElementById("timeText").innerHTML = time;
        }
        console.log("get barnum" + barNum)
            //if (online == "1") {
            //if online
        document.getElementById("status").innerHTML = "online";
        eel.queryWebBarcode(barNum)(printNum)
            //} else if (online == "0") {
            //if offline
        document.getElementById("status").innerHTML = "offline";
        eel.queryLocalBarcode(barNum)(printNum)
            //}

    }
}

function reset() {
    window.open("main.html", "_self")
}

function sec5() {
    seconds = seconds + 5
    if (seconds >= 60) {
        seconds = 0
        minutes = minutes + 1
    }
    document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();
}

function sec10() {
    seconds = seconds + 10
    if (seconds >= 60) {
        seconds = 0
        minutes = minutes + 1
    }
    document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();
}

function sec30() {
    seconds = seconds + 30
    if (seconds >= 60) {
        seconds = 0
        minutes = minutes + 1
    }
    document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();
}

function min1() {
    minutes = minutes + 1
    document.getElementById("timeText").innerHTML = minutes.toString() + " : " + seconds.toString();
}

//function setTime()
//{
//    window.open("timer.html","_self");
//}
function manualRun() {
    eel.setTime(minutes.toString() + " " + seconds.toString())()
    window.open("timer.html", "_self");
}